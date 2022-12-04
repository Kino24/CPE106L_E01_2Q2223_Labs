"""
Program: generator.py
Author: Ken
Generates and displays sentences using a simple grammar
and vocabulary.  Words are chosen at random.
"""

import random

#getWords function with filename as an argument to open the input files
def getWords(filename):
    textfiles=open(filename)
    #defining a temporary list
    temporaryList=list()
    #reading words from the file and adding them to temporary list
    for line in textfiles:
        word = line.strip()
        temporaryList.append(word)
    #converting the list to a tuple
    wordsList=tuple(temporaryList)
    textfiles.close()
    #returning the tuple
    return wordsList

#getWords function with the text files to initialize articles, verbs, nouns, and preposition
articles=getWords('articles.txt')
nouns=getWords('nouns.txt')
verbs=getWords('verbs.txt')
prepositions=getWords('prepositions.txt')


def sentence():
    """Builds and returns a sentence."""
    return nounPhrase() + " " + verbPhrase()

def nounPhrase():
    """Builds and returns a noun phrase."""
    return random.choice(articles) + " " + random.choice(nouns)

def verbPhrase():
    """Builds and returns a verb phrase."""
    return random.choice(verbs) + " " + nounPhrase() + " " + \
           prepositionalPhrase()

def prepositionalPhrase():
    """Builds and returns a prepositional phrase."""
    return random.choice(prepositions) + " " + nounPhrase()

def main():
    """Allows the user to input the number of sentences
    to generate."""
    number = int(input("Enter the number of sentences: "))
    for count in range(number):
        print(sentence())

# The entry point for program execution
if __name__ == "__main__":
    main()
