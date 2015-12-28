# -*- coding: utf8 -*-
from __future__ import absolute_import
from __future__ import division, print_function, unicode_literals

import os
from flask import Flask
from flask import jsonify
from flask import request
from flask import render_template
from sumy.parsers.html import HtmlParser
from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import nltk

nltk.data.path.append('./nltk_data/')
nltk.data.path.append('./app/nltk_data/')

from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.nlp.stemmers import Stemmer
from sumy.utils import get_stop_words
import sys
import logging

app = Flask(__name__)
app.logger.addHandler(logging.StreamHandler(sys.stdout))
app.logger.setLevel(logging.ERROR)

LANGUAGE = "english"
SENTENCES_COUNT = 5

text = '''Star Wars: The Force Awakens (also known as Star Wars Episode VII: The Force Awakens) is a 2015 American epic space opera film directed, co-produced, and co-written by J. J. Abrams. The seventh installment in the main Star Wars film series, it stars Harrison Ford, Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong'o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Peter Mayhew, and Max von Sydow. Produced by Lucasfilm and Abrams' Bad Robot Productions and distributed worldwide by Walt Disney Studios Motion Pictures, The Force Awakens is set approximately 30 years after Return of the Jedi (1983), and follows Rey, Finn, and Poe Dameron's fight with the Resistance, led by veterans of the Rebel Alliance, against Kylo Ren and the First Order, descended from the Galactic Empire.\nThe Force Awakens is the first film in the Star Wars sequel trilogy announced after Disney's acquisition of Lucasfilm in October 2012. The film is produced by Abrams, his long-time collaborator Bryan Burk, and Lucasfilm president Kathleen Kennedy. Abrams and Lawrence Kasdan, co-writer of the original trilogy films The Empire Strikes Back (1980) and Return of the Jedi, rewrote an initial script by Michael Arndt. John Williams, composer for the previous six films, returned to compose its score. Star Wars creator George Lucas served as creative consultant during the film's early production stages. Filming began in April 2014 in Abu Dhabi and Iceland, with principal photography also taking place in Ireland and Pinewood Studios in England.\nThe Force Awakens was released worldwide starting from December 16, 2015, 2 days after its premiere in Los Angeles and more than 10 years after the release of the franchise's last major installment.[5][6] Critics compared it favorably to the original trilogy, praising its action sequences, characters, acting, special effects, musical score and emotional drama, though it was criticized for being derivative. Disney backed the film with an extensive marketing campaign[7][8]; it has broken many box office records, including the highest-grossing worldwide opening of all time. As of December 27, 2015, it has generated a global box office gross of over $1.09 billion, becoming the fifth highest-grossing film of 2015 and the fifteenth highest of all time. Episode VIII is scheduled for release on May 26, 2017, followed by the last film in the sequel trilogy, Episode IX, in 2019.'''

@app.route('/')
def fyi():
    # stemmer = Stemmer(LANGUAGE)

    # summarizer = Summarizer(stemmer)
    # summarizer.stop_words = get_stop_words(LANGUAGE)

    # # parser = PlaintextParser.from_file("document.txt", Tokenizer(LANGUAGE))

    # parser = PlaintextParser.from_string(text, Tokenizer(LANGUAGE))

    # html = ''
    # for i,sentence in enumerate(summarizer(parser.document, SENTENCES_COUNT)):
    #     html += '<p>' + str(sentence) + '</p>'

    return render_template('index.tpl')

@app.route('/sumy', methods=['post'])
def sumy():

    print('request.form', request.form)

    # article = request.args.get('article')
    article = request.form['article']
    print('article:', article)

    # lang = request.args.get('language')
    lang = request.form['language'].strip()
    print('lang:', lang)

    # sent_count = request.args.get('count')
    sent_count = int(request.form['count'])
    print('sent_count:', sent_count)


    print('init a Stemmer')
    stemmer = Stemmer(lang)
    print('Stemmer is ok')


    summarizer = Summarizer(stemmer)
    print('summarizer is ready')

    # summarizer.stop_words = get_stop_words(lang)
    # print('inject stop_words')
    print('ignore stop_words')

    parser = PlaintextParser.from_string(article, Tokenizer(lang))
    print('PlaintextParser')

    sentences = [str(sentence) for sentence in summarizer(parser.document, sent_count)]
    print('sentences:', sentences)

    return jsonify(sentences=sentences)

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)








