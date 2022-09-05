class Sections
{
  String sectionName;
  String overview;
  String sectionDescription;
  List <String> materials;
  bool isFavorite;
  String imgPath;

  Sections
  ({required this.sectionName, required this.overview, required this.sectionDescription, required this.materials, required this.isFavorite, required this.imgPath});
}

var sectionsListScroll = [
  Sections
  (
    sectionName: 'Vocabulary',
    overview: "Vocabulary is a list and/or collection of words and their meanings, which usually comes up with their roles in a sentence.",
    sectionDescription: "There are several types of vocabulary words like noun, verb, adjective, adverb, preposition, pronoun, and conjunction.",
    materials:
    [
      'some examples like: car, table, button, pen are nouns, and nouns are basically every thing you can name. \nSome words can be transformed into nouns using a determiner (a / an / all), for example: \n"He is a bother"\n"They are all geniuses"',
      'go, play, walk, and stand are verb examples, used to describe an action, state, or occurrence that is/will happening/ed to the subject.',
      'active, cute, big, above, and good are a few of many adjectives. Adjective is used to describe the subject\'s condition or attribute.',
      'very, better, more, are adverb examples. Adverb are words that modifies/describes a verb, an adjective, another adverb, or even a whole sentence.',
      'in, at, on, under, are prepositions examples, it can consist as a single word or a group of words used before a noun, pronoun, or noun phrase to show direction, time, place, location, spatial relationships, or to introduce an object.',
      'I, you, they, we, she, he, and it are pronouns, used to represent an individual, or a group in a sentence.',
      'can, could, should, shouldn\'t, might, must, etc. are modal verbs that show possibility, intent, ability, or necessity. Usually comes before the main verb in a sentence.'
    ],
    isFavorite: false,
    imgPath: 'images/vocabulary.jpg'
  ),
  Sections
  (
    sectionName: 'Tenses',
    overview: "Tense is a verb-based method used to indicate time, and sometimes the continuation or completeness, of an action or state in relation to the time of speaking.",
    sectionDescription: "There ae three category of tenses with three aspects (progressive, perfect, combination of progressive and perfect) in each category:",
    materials:
    [
      'Present tense. An event that happens at the current timeline point, now or any time that includes now and how things is. For example:\nSimple form: "I see David"\nProgressive form: "I am seeing David"\nPerfect form: "I have seen David"\nPerfect continuous form: "I have been seeing David"',
      'Past tense, An event that happens past the current timeline point, before now, how things was, how things was. For example:\nSimple form: "I saw David"\nProgressive form: "I was seeing David"\nPerfect form: "I had seen David"\nPerfect continuous form: "I had been seeing David"',
      'Future tense, An event that happens after the current timeline point, after now, how things will be, hence sounding like a plan or prediction. For example:\nSimple form: "I will see David"\nProgressive form: "I will be seeing David"\nPerfect form: "I will have seen David"\nPerfect continuous form: "I will have been seeing David"',
    ],
    isFavorite: false,
    imgPath: 'images/tenses.png'
  ),
  Sections
  (
    sectionName: 'Gerund',
    overview: "Gerund is the noun form of a verb that ends in -ing.",
    sectionDescription: "While some get confused while learning gerunds, it is actually quite understandable if one knows how gerund works. A gerund can be the subject of the sentence, direct / indirect object, or the object of a preposition. To turn a verb into a gerund, all you need to do is add -ing to the base form of a verb. The base form is the form of a verb you will find if you look up a verb in our dictionary.",
    materials:
    [
      '"Reading is relaxing". In the sentence, \'Reading\' stands as a subject.',
      '"He enjoys running". In the sentence, \'running\' stands as a direct object.',
      '"He made sleeping a priority" and "My dad teaches me climbing". In the sentence, \'sleeping\' and \'climbing\' stands as an indirect object.'
    ],
    isFavorite: false,
    imgPath: 'images/gerund.jpg'
  ),
  Sections
  (
    sectionName: 'Proverb',
    overview: "Proverb is a simple and insightful, traditional saying that expresses a truth and advice based on common sense or experience.",
    sectionDescription: "In actuality, it\'s a simple message coated in a slight fantasy. It is sometimes used to amplify messages in a way that draws readers in and helps to awaken their senses. some easy-to-digest proverbs are as follows:",
    materials:
    [
      'A cat has nine lives, means to imply that cats are seemingly so, because they can avoid fatal events',
      'Actions speak louder than words, implying that action is a better reflection of one’s character than words because it’s easy to say things, but difficult to act on them and follow through',
      'A goose quill is more dangerous than a lion’s claw, implying that words can hurt more than physical attacks.',
      'A picture is worth a thousand words, means that an image can tell a story better than words.',
      'Beggars can’t be choosers, means that if you’re in a bad situation and someone offers to help you, you have to take whatever they give you and shouldn’t ask for more.',
      'Birds of a feather flock together, means that people who are similar spend time together.',
      'God helps those who help themselves, don’t just wait for good things to happen to you. Work hard to make them happen.',
      'If it ain’t broke, don’t fix it, implying that if something is already working well, don’t try to change it or improve it.',
      'No man is an island, means no one is truly capable of living alone. We need human connection to be healthy and keep our sanity in check.',
      'No place like home, means that your home is the most comfortable place in the world.',
      'and more...'
    ],
    isFavorite: false,
    imgPath: 'images/proverb.jpg'
  ),
  Sections
  (
    sectionName: 'English Idiom',
    overview: "An idiom is a phrase or an expression that has a particular meaning that differs from the meaning of the individual words.",
    sectionDescription: "Idioms are a bunch of words that make up a phrase that is usually used to say or expressing something that contains a figurative meaning that is different from the phrase's literal meaning. Some of the commonly used english idioms are:",
    materials:
    [
      'Feeling \'under the weather\', means feeling sick.',
      'Burn a bridge, means to break a relationship to the point that it cannot be repaired.',
      'Break the ice, means to loosen up the atmosphere of the situation.',
      'Once in a blue moon, means rare / rarely.',
      'You can say that again, means it\'s true or expressing agreement.',
      'Take it with a pinch / grain of salt, means don\'t take it too seriously or don\'t instantly assume it\'s true.',
      'Beat around the bush, means asking \'unnecessary\' questions in a certain context or topic.',
    ],
    isFavorite: false,
    imgPath: 'images/english-idiom.jpg'
  ),
  Sections
  (
    sectionName: 'Slang',
    overview: "Informal speech manner(s), more common in speech than in writing, and usually directed to/restricted to a particular context or group.",
    sectionDescription: "Common slang(s) in everyday speeches are:",
    materials:
    [
      'Cap, is used to imply that you\'re lying.\n"I got paid yesterday", "That\'s a cap,", the person implies that he lied about getting paid.',
      'Chill, used to express/tell people to calm down.\n"We have to go now!", "Chill, we still have an hour", he tells his friend to calm down because they still have time.',
      'Fishy, means suspicious, equivalent to "sus".\n"That\'s fishy / That\'s sus", implying that something\'s fishy.'
      'Dope, means cool or awesome.\n"That jacket\'s dope!", implying that the jacket is cool or looks good.',
      'Thirsty, means trying to get attention.',
      'Lit, means amazing, great, exciting and the likes.\n"This party is lit!", implying that the party is amazing.',
      'GOAT, an abbreviation of "Greatest Of All Time".',
      'Dancing with the devil, means doing something very risky.',
      'Dough, is money in slang language.',
      'Flex, means showing off, for instance, flexing your money means showing off your money.',
      'Fam, homie(s), referring to friend or a group of friends.',
      'Snatched, means (looking) good.\n"You look snatched with that jacket, girl!", means that the girl looks good in the jacket.',
    ],
    isFavorite: false,
    imgPath: 'images/slang.png'
  ),
];