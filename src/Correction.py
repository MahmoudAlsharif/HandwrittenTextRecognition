from autocorrect import Speller


def correct_word(word):
    spell = Speller(lang='en')
    words = word.strip().split(' ')
    new_word = ""
    similar_word = {}
    for l in words:
        new_word += spell(l) + " "
    # similar_word[l]=spell.candidates(l)
    return new_word