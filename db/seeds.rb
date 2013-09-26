# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MusicGenre.create(name: 'Pop', description: 'Pop music')
Artist.create(name: 'Adele', music_genre: MusicGenre.find_by_name('Pop'))
lyrics = "I heard, that you're settled down,
That you, found a girl and your married now.
I heard that your dreams came true.
Guess she gave you things, I didn't give to you.
Old friend, why are you so shy?
Ain't like you to hold back or hide from the light.
I hate to turn up out of the blue uninvited,
But I couldn't stay away, I couldn't fight it.
I'd hoped you'd see my face and that you'd be reminded,
That for me, it isn't over.
Nevermind, I'll find someone like you.
I wish nothing but the best, for you too.
Don't forget me, I beg, I remember you said,
\"Sometimes it lasts in love but sometimes it hurts instead\"
Sometimes it lasts in love but sometimes it hurts instead, yeah.
You'd know, how the time flies.
Only yesterday, was the time of our lives.
We were born and raised in a summer haze,
Bound by the surprise of our glory days.
I hate to turn up out of the blue uninvited,
But I couldn't stay away, I couldn't fight it.
I'd hoped you'd see my face & that you'd be reminded,
That for me, it isn't over.
Nevermind, I'll find someone like you.
I wish nothing but the best for you too.
Don't forget me, I beg, I remember you say,
\"Sometimes it lasts in love but sometimes it hurts instead\", yay.
Nothing compares, no worries or cares.
Regret's and mistakes they're memories made.
Who would have known how bittersweet this would taste?
Nevermind, I'll find someone like you.
I wish nothing but the best for you.
Don't forget me, I beg, I remember you said,
\"Sometimes it lasts in love but sometimes it hurts instead\"
Nevermind, I'll find someone like you.
I wish nothing but the best for you too.
Don't forget me, I beg, I remembered you say,
\"Sometimes it lasts in love but sometimes it hurts instead\"
Sometimes it lasts in love but sometimes it hurts instead, yay yeh yeah."
v = Video.create(url: 'http://www.youtube.com/watch?v=hLQl3WQQoQ0')
lyr = Lyric.create(title: 'Someone like you',
             text: lyrics,
             text_pos: '',
             artist: Artist.find_by_name('Adele'),
             video: v)

w1 = Word.create(word: 'things', video_time: 37, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 1)
w2 = Word.create(word: 'I', video_time: 37, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 2)
w3 = Word.create(word: 'didn\'t', video_time: 37, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 3)
w4 = Word.create(word: 'give', video_time: 37, lyric: Lyric.find_by_title('Someone like you'), is_test: true, position: 4)
w5 = Word.create(word: 'to', video_time: 37, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 5)
w6 = Word.create(word: 'you', video_time: 37, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 6)
sentence = TestSentence.create(sentence: 'Things I did\'t give to you',
                           video_time: 37, lyric: lyr)
WordsSentence.create(word: w1, test_sentence: sentence)
WordsSentence.create(word: w2, test_sentence: sentence)
WordsSentence.create(word: w3, test_sentence: sentence)
WordsSentence.create(word: w4, test_sentence: sentence)
WordsSentence.create(word: w5, test_sentence: sentence)
WordsSentence.create(word: w6, test_sentence: sentence)
Answer.create(answer: 'give', is_key: true, test_sentence: sentence)
Answer.create(answer: 'gave', is_key: false, test_sentence: sentence)
Answer.create(answer: 'given', is_key: false, test_sentence: sentence)


w1 = Word.create(word: 'I', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 7)
w2 = Word.create(word: 'had', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 8)
w3 = Word.create(word: 'hoped', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: true, position: 9)
w4 = Word.create(word: 'you\'d', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 10)
w5 = Word.create(word: 'see', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 11)
w6 = Word.create(word: 'my', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 12)
w7 = Word.create(word: 'face', video_time: 64, lyric: Lyric.find_by_title('Someone like you'), is_test: false, position: 13)

sentence2 = TestSentence.create(sentence: 'I had hoped you\'d see my face', video_time: 64, lyric: lyr)
WordsSentence.create(word: w1, test_sentence: sentence2)
WordsSentence.create(word: w2, test_sentence: sentence2)
WordsSentence.create(word: w3, test_sentence: sentence2)
WordsSentence.create(word: w4, test_sentence: sentence2)
WordsSentence.create(word: w5, test_sentence: sentence2)
WordsSentence.create(word: w6, test_sentence: sentence2)
WordsSentence.create(word: w7, test_sentence: sentence2)
Answer.create(answer: 'hope', is_key: false, test_sentence: sentence2)
Answer.create(answer: 'hoped', is_key: true, test_sentence: sentence2)
Answer.create(answer: 'hopen', is_key: false, test_sentence: sentence2)




