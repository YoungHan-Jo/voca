// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $WordsTable extends Words with TableInfo<$WordsTable, Word> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _wordMeta = const VerificationMeta('word');
  @override
  late final GeneratedColumn<String> word = GeneratedColumn<String>(
    'word',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _wordClassMeta = const VerificationMeta(
    'wordClass',
  );
  @override
  late final GeneratedColumn<String> wordClass = GeneratedColumn<String>(
    'word_class',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sfiRankMeta = const VerificationMeta(
    'sfiRank',
  );
  @override
  late final GeneratedColumn<int> sfiRank = GeneratedColumn<int>(
    'sfi_rank',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pastMeta = const VerificationMeta('past');
  @override
  late final GeneratedColumn<String> past = GeneratedColumn<String>(
    'past',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pastParticipleMeta = const VerificationMeta(
    'pastParticiple',
  );
  @override
  late final GeneratedColumn<String> pastParticiple = GeneratedColumn<String>(
    'past_participle',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pluralMeta = const VerificationMeta('plural');
  @override
  late final GeneratedColumn<String> plural = GeneratedColumn<String>(
    'plural',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    word,
    wordClass,
    level,
    sfiRank,
    past,
    pastParticiple,
    plural,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'words';
  @override
  VerificationContext validateIntegrity(
    Insertable<Word> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('word')) {
      context.handle(
        _wordMeta,
        word.isAcceptableOrUnknown(data['word']!, _wordMeta),
      );
    } else if (isInserting) {
      context.missing(_wordMeta);
    }
    if (data.containsKey('word_class')) {
      context.handle(
        _wordClassMeta,
        wordClass.isAcceptableOrUnknown(data['word_class']!, _wordClassMeta),
      );
    } else if (isInserting) {
      context.missing(_wordClassMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta,
        level.isAcceptableOrUnknown(data['level']!, _levelMeta),
      );
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('sfi_rank')) {
      context.handle(
        _sfiRankMeta,
        sfiRank.isAcceptableOrUnknown(data['sfi_rank']!, _sfiRankMeta),
      );
    } else if (isInserting) {
      context.missing(_sfiRankMeta);
    }
    if (data.containsKey('past')) {
      context.handle(
        _pastMeta,
        past.isAcceptableOrUnknown(data['past']!, _pastMeta),
      );
    }
    if (data.containsKey('past_participle')) {
      context.handle(
        _pastParticipleMeta,
        pastParticiple.isAcceptableOrUnknown(
          data['past_participle']!,
          _pastParticipleMeta,
        ),
      );
    }
    if (data.containsKey('plural')) {
      context.handle(
        _pluralMeta,
        plural.isAcceptableOrUnknown(data['plural']!, _pluralMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Word map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Word(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      word: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}word'],
      )!,
      wordClass: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}word_class'],
      )!,
      level: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}level'],
      )!,
      sfiRank: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sfi_rank'],
      )!,
      past: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}past'],
      ),
      pastParticiple: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}past_participle'],
      ),
      plural: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}plural'],
      ),
    );
  }

  @override
  $WordsTable createAlias(String alias) {
    return $WordsTable(attachedDatabase, alias);
  }
}

class Word extends DataClass implements Insertable<Word> {
  final String id;
  final String word;
  final String wordClass;
  final String level;
  final int sfiRank;
  final String? past;
  final String? pastParticiple;
  final String? plural;
  const Word({
    required this.id,
    required this.word,
    required this.wordClass,
    required this.level,
    required this.sfiRank,
    this.past,
    this.pastParticiple,
    this.plural,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['word'] = Variable<String>(word);
    map['word_class'] = Variable<String>(wordClass);
    map['level'] = Variable<String>(level);
    map['sfi_rank'] = Variable<int>(sfiRank);
    if (!nullToAbsent || past != null) {
      map['past'] = Variable<String>(past);
    }
    if (!nullToAbsent || pastParticiple != null) {
      map['past_participle'] = Variable<String>(pastParticiple);
    }
    if (!nullToAbsent || plural != null) {
      map['plural'] = Variable<String>(plural);
    }
    return map;
  }

  WordsCompanion toCompanion(bool nullToAbsent) {
    return WordsCompanion(
      id: Value(id),
      word: Value(word),
      wordClass: Value(wordClass),
      level: Value(level),
      sfiRank: Value(sfiRank),
      past: past == null && nullToAbsent ? const Value.absent() : Value(past),
      pastParticiple: pastParticiple == null && nullToAbsent
          ? const Value.absent()
          : Value(pastParticiple),
      plural: plural == null && nullToAbsent
          ? const Value.absent()
          : Value(plural),
    );
  }

  factory Word.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Word(
      id: serializer.fromJson<String>(json['id']),
      word: serializer.fromJson<String>(json['word']),
      wordClass: serializer.fromJson<String>(json['wordClass']),
      level: serializer.fromJson<String>(json['level']),
      sfiRank: serializer.fromJson<int>(json['sfiRank']),
      past: serializer.fromJson<String?>(json['past']),
      pastParticiple: serializer.fromJson<String?>(json['pastParticiple']),
      plural: serializer.fromJson<String?>(json['plural']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'word': serializer.toJson<String>(word),
      'wordClass': serializer.toJson<String>(wordClass),
      'level': serializer.toJson<String>(level),
      'sfiRank': serializer.toJson<int>(sfiRank),
      'past': serializer.toJson<String?>(past),
      'pastParticiple': serializer.toJson<String?>(pastParticiple),
      'plural': serializer.toJson<String?>(plural),
    };
  }

  Word copyWith({
    String? id,
    String? word,
    String? wordClass,
    String? level,
    int? sfiRank,
    Value<String?> past = const Value.absent(),
    Value<String?> pastParticiple = const Value.absent(),
    Value<String?> plural = const Value.absent(),
  }) => Word(
    id: id ?? this.id,
    word: word ?? this.word,
    wordClass: wordClass ?? this.wordClass,
    level: level ?? this.level,
    sfiRank: sfiRank ?? this.sfiRank,
    past: past.present ? past.value : this.past,
    pastParticiple: pastParticiple.present
        ? pastParticiple.value
        : this.pastParticiple,
    plural: plural.present ? plural.value : this.plural,
  );
  Word copyWithCompanion(WordsCompanion data) {
    return Word(
      id: data.id.present ? data.id.value : this.id,
      word: data.word.present ? data.word.value : this.word,
      wordClass: data.wordClass.present ? data.wordClass.value : this.wordClass,
      level: data.level.present ? data.level.value : this.level,
      sfiRank: data.sfiRank.present ? data.sfiRank.value : this.sfiRank,
      past: data.past.present ? data.past.value : this.past,
      pastParticiple: data.pastParticiple.present
          ? data.pastParticiple.value
          : this.pastParticiple,
      plural: data.plural.present ? data.plural.value : this.plural,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Word(')
          ..write('id: $id, ')
          ..write('word: $word, ')
          ..write('wordClass: $wordClass, ')
          ..write('level: $level, ')
          ..write('sfiRank: $sfiRank, ')
          ..write('past: $past, ')
          ..write('pastParticiple: $pastParticiple, ')
          ..write('plural: $plural')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    word,
    wordClass,
    level,
    sfiRank,
    past,
    pastParticiple,
    plural,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Word &&
          other.id == this.id &&
          other.word == this.word &&
          other.wordClass == this.wordClass &&
          other.level == this.level &&
          other.sfiRank == this.sfiRank &&
          other.past == this.past &&
          other.pastParticiple == this.pastParticiple &&
          other.plural == this.plural);
}

class WordsCompanion extends UpdateCompanion<Word> {
  final Value<String> id;
  final Value<String> word;
  final Value<String> wordClass;
  final Value<String> level;
  final Value<int> sfiRank;
  final Value<String?> past;
  final Value<String?> pastParticiple;
  final Value<String?> plural;
  final Value<int> rowid;
  const WordsCompanion({
    this.id = const Value.absent(),
    this.word = const Value.absent(),
    this.wordClass = const Value.absent(),
    this.level = const Value.absent(),
    this.sfiRank = const Value.absent(),
    this.past = const Value.absent(),
    this.pastParticiple = const Value.absent(),
    this.plural = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WordsCompanion.insert({
    required String id,
    required String word,
    required String wordClass,
    required String level,
    required int sfiRank,
    this.past = const Value.absent(),
    this.pastParticiple = const Value.absent(),
    this.plural = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       word = Value(word),
       wordClass = Value(wordClass),
       level = Value(level),
       sfiRank = Value(sfiRank);
  static Insertable<Word> custom({
    Expression<String>? id,
    Expression<String>? word,
    Expression<String>? wordClass,
    Expression<String>? level,
    Expression<int>? sfiRank,
    Expression<String>? past,
    Expression<String>? pastParticiple,
    Expression<String>? plural,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (word != null) 'word': word,
      if (wordClass != null) 'word_class': wordClass,
      if (level != null) 'level': level,
      if (sfiRank != null) 'sfi_rank': sfiRank,
      if (past != null) 'past': past,
      if (pastParticiple != null) 'past_participle': pastParticiple,
      if (plural != null) 'plural': plural,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WordsCompanion copyWith({
    Value<String>? id,
    Value<String>? word,
    Value<String>? wordClass,
    Value<String>? level,
    Value<int>? sfiRank,
    Value<String?>? past,
    Value<String?>? pastParticiple,
    Value<String?>? plural,
    Value<int>? rowid,
  }) {
    return WordsCompanion(
      id: id ?? this.id,
      word: word ?? this.word,
      wordClass: wordClass ?? this.wordClass,
      level: level ?? this.level,
      sfiRank: sfiRank ?? this.sfiRank,
      past: past ?? this.past,
      pastParticiple: pastParticiple ?? this.pastParticiple,
      plural: plural ?? this.plural,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (word.present) {
      map['word'] = Variable<String>(word.value);
    }
    if (wordClass.present) {
      map['word_class'] = Variable<String>(wordClass.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(level.value);
    }
    if (sfiRank.present) {
      map['sfi_rank'] = Variable<int>(sfiRank.value);
    }
    if (past.present) {
      map['past'] = Variable<String>(past.value);
    }
    if (pastParticiple.present) {
      map['past_participle'] = Variable<String>(pastParticiple.value);
    }
    if (plural.present) {
      map['plural'] = Variable<String>(plural.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordsCompanion(')
          ..write('id: $id, ')
          ..write('word: $word, ')
          ..write('wordClass: $wordClass, ')
          ..write('level: $level, ')
          ..write('sfiRank: $sfiRank, ')
          ..write('past: $past, ')
          ..write('pastParticiple: $pastParticiple, ')
          ..write('plural: $plural, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WordMeaningsTable extends WordMeanings
    with TableInfo<$WordMeaningsTable, WordMeaning> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WordMeaningsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _wordIdMeta = const VerificationMeta('wordId');
  @override
  late final GeneratedColumn<String> wordId = GeneratedColumn<String>(
    'word_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES words (id)',
    ),
  );
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
    'lang',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _meaningMeta = const VerificationMeta(
    'meaning',
  );
  @override
  late final GeneratedColumn<String> meaning = GeneratedColumn<String>(
    'meaning',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [wordId, lang, meaning];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'word_meanings';
  @override
  VerificationContext validateIntegrity(
    Insertable<WordMeaning> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('word_id')) {
      context.handle(
        _wordIdMeta,
        wordId.isAcceptableOrUnknown(data['word_id']!, _wordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_wordIdMeta);
    }
    if (data.containsKey('lang')) {
      context.handle(
        _langMeta,
        lang.isAcceptableOrUnknown(data['lang']!, _langMeta),
      );
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('meaning')) {
      context.handle(
        _meaningMeta,
        meaning.isAcceptableOrUnknown(data['meaning']!, _meaningMeta),
      );
    } else if (isInserting) {
      context.missing(_meaningMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {wordId, lang};
  @override
  WordMeaning map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WordMeaning(
      wordId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}word_id'],
      )!,
      lang: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lang'],
      )!,
      meaning: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meaning'],
      )!,
    );
  }

  @override
  $WordMeaningsTable createAlias(String alias) {
    return $WordMeaningsTable(attachedDatabase, alias);
  }
}

class WordMeaning extends DataClass implements Insertable<WordMeaning> {
  final String wordId;
  final String lang;
  final String meaning;
  const WordMeaning({
    required this.wordId,
    required this.lang,
    required this.meaning,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['word_id'] = Variable<String>(wordId);
    map['lang'] = Variable<String>(lang);
    map['meaning'] = Variable<String>(meaning);
    return map;
  }

  WordMeaningsCompanion toCompanion(bool nullToAbsent) {
    return WordMeaningsCompanion(
      wordId: Value(wordId),
      lang: Value(lang),
      meaning: Value(meaning),
    );
  }

  factory WordMeaning.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WordMeaning(
      wordId: serializer.fromJson<String>(json['wordId']),
      lang: serializer.fromJson<String>(json['lang']),
      meaning: serializer.fromJson<String>(json['meaning']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'wordId': serializer.toJson<String>(wordId),
      'lang': serializer.toJson<String>(lang),
      'meaning': serializer.toJson<String>(meaning),
    };
  }

  WordMeaning copyWith({String? wordId, String? lang, String? meaning}) =>
      WordMeaning(
        wordId: wordId ?? this.wordId,
        lang: lang ?? this.lang,
        meaning: meaning ?? this.meaning,
      );
  WordMeaning copyWithCompanion(WordMeaningsCompanion data) {
    return WordMeaning(
      wordId: data.wordId.present ? data.wordId.value : this.wordId,
      lang: data.lang.present ? data.lang.value : this.lang,
      meaning: data.meaning.present ? data.meaning.value : this.meaning,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WordMeaning(')
          ..write('wordId: $wordId, ')
          ..write('lang: $lang, ')
          ..write('meaning: $meaning')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(wordId, lang, meaning);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WordMeaning &&
          other.wordId == this.wordId &&
          other.lang == this.lang &&
          other.meaning == this.meaning);
}

class WordMeaningsCompanion extends UpdateCompanion<WordMeaning> {
  final Value<String> wordId;
  final Value<String> lang;
  final Value<String> meaning;
  final Value<int> rowid;
  const WordMeaningsCompanion({
    this.wordId = const Value.absent(),
    this.lang = const Value.absent(),
    this.meaning = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WordMeaningsCompanion.insert({
    required String wordId,
    required String lang,
    required String meaning,
    this.rowid = const Value.absent(),
  }) : wordId = Value(wordId),
       lang = Value(lang),
       meaning = Value(meaning);
  static Insertable<WordMeaning> custom({
    Expression<String>? wordId,
    Expression<String>? lang,
    Expression<String>? meaning,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (wordId != null) 'word_id': wordId,
      if (lang != null) 'lang': lang,
      if (meaning != null) 'meaning': meaning,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WordMeaningsCompanion copyWith({
    Value<String>? wordId,
    Value<String>? lang,
    Value<String>? meaning,
    Value<int>? rowid,
  }) {
    return WordMeaningsCompanion(
      wordId: wordId ?? this.wordId,
      lang: lang ?? this.lang,
      meaning: meaning ?? this.meaning,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (wordId.present) {
      map['word_id'] = Variable<String>(wordId.value);
    }
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (meaning.present) {
      map['meaning'] = Variable<String>(meaning.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordMeaningsCompanion(')
          ..write('wordId: $wordId, ')
          ..write('lang: $lang, ')
          ..write('meaning: $meaning, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SentencesTable extends Sentences
    with TableInfo<$SentencesTable, Sentence> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SentencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _wordIdMeta = const VerificationMeta('wordId');
  @override
  late final GeneratedColumn<String> wordId = GeneratedColumn<String>(
    'word_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES words (id)',
    ),
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, wordId, category, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sentences';
  @override
  VerificationContext validateIntegrity(
    Insertable<Sentence> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('word_id')) {
      context.handle(
        _wordIdMeta,
        wordId.isAcceptableOrUnknown(data['word_id']!, _wordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_wordIdMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Sentence map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Sentence(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      wordId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}word_id'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      )!,
    );
  }

  @override
  $SentencesTable createAlias(String alias) {
    return $SentencesTable(attachedDatabase, alias);
  }
}

class Sentence extends DataClass implements Insertable<Sentence> {
  final String id;
  final String wordId;
  final String category;
  final String content;
  const Sentence({
    required this.id,
    required this.wordId,
    required this.category,
    required this.content,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['word_id'] = Variable<String>(wordId);
    map['category'] = Variable<String>(category);
    map['content'] = Variable<String>(content);
    return map;
  }

  SentencesCompanion toCompanion(bool nullToAbsent) {
    return SentencesCompanion(
      id: Value(id),
      wordId: Value(wordId),
      category: Value(category),
      content: Value(content),
    );
  }

  factory Sentence.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Sentence(
      id: serializer.fromJson<String>(json['id']),
      wordId: serializer.fromJson<String>(json['wordId']),
      category: serializer.fromJson<String>(json['category']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'wordId': serializer.toJson<String>(wordId),
      'category': serializer.toJson<String>(category),
      'content': serializer.toJson<String>(content),
    };
  }

  Sentence copyWith({
    String? id,
    String? wordId,
    String? category,
    String? content,
  }) => Sentence(
    id: id ?? this.id,
    wordId: wordId ?? this.wordId,
    category: category ?? this.category,
    content: content ?? this.content,
  );
  Sentence copyWithCompanion(SentencesCompanion data) {
    return Sentence(
      id: data.id.present ? data.id.value : this.id,
      wordId: data.wordId.present ? data.wordId.value : this.wordId,
      category: data.category.present ? data.category.value : this.category,
      content: data.content.present ? data.content.value : this.content,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Sentence(')
          ..write('id: $id, ')
          ..write('wordId: $wordId, ')
          ..write('category: $category, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, wordId, category, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Sentence &&
          other.id == this.id &&
          other.wordId == this.wordId &&
          other.category == this.category &&
          other.content == this.content);
}

class SentencesCompanion extends UpdateCompanion<Sentence> {
  final Value<String> id;
  final Value<String> wordId;
  final Value<String> category;
  final Value<String> content;
  final Value<int> rowid;
  const SentencesCompanion({
    this.id = const Value.absent(),
    this.wordId = const Value.absent(),
    this.category = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SentencesCompanion.insert({
    required String id,
    required String wordId,
    required String category,
    required String content,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       wordId = Value(wordId),
       category = Value(category),
       content = Value(content);
  static Insertable<Sentence> custom({
    Expression<String>? id,
    Expression<String>? wordId,
    Expression<String>? category,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (wordId != null) 'word_id': wordId,
      if (category != null) 'category': category,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SentencesCompanion copyWith({
    Value<String>? id,
    Value<String>? wordId,
    Value<String>? category,
    Value<String>? content,
    Value<int>? rowid,
  }) {
    return SentencesCompanion(
      id: id ?? this.id,
      wordId: wordId ?? this.wordId,
      category: category ?? this.category,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (wordId.present) {
      map['word_id'] = Variable<String>(wordId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SentencesCompanion(')
          ..write('id: $id, ')
          ..write('wordId: $wordId, ')
          ..write('category: $category, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SentenceTranslationsTable extends SentenceTranslations
    with TableInfo<$SentenceTranslationsTable, SentenceTranslation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SentenceTranslationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _sentenceIdMeta = const VerificationMeta(
    'sentenceId',
  );
  @override
  late final GeneratedColumn<String> sentenceId = GeneratedColumn<String>(
    'sentence_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sentences (id)',
    ),
  );
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
    'lang',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translationMeta = const VerificationMeta(
    'translation',
  );
  @override
  late final GeneratedColumn<String> translation = GeneratedColumn<String>(
    'translation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [sentenceId, lang, translation];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sentence_translations';
  @override
  VerificationContext validateIntegrity(
    Insertable<SentenceTranslation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sentence_id')) {
      context.handle(
        _sentenceIdMeta,
        sentenceId.isAcceptableOrUnknown(data['sentence_id']!, _sentenceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sentenceIdMeta);
    }
    if (data.containsKey('lang')) {
      context.handle(
        _langMeta,
        lang.isAcceptableOrUnknown(data['lang']!, _langMeta),
      );
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('translation')) {
      context.handle(
        _translationMeta,
        translation.isAcceptableOrUnknown(
          data['translation']!,
          _translationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sentenceId, lang};
  @override
  SentenceTranslation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SentenceTranslation(
      sentenceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sentence_id'],
      )!,
      lang: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lang'],
      )!,
      translation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation'],
      )!,
    );
  }

  @override
  $SentenceTranslationsTable createAlias(String alias) {
    return $SentenceTranslationsTable(attachedDatabase, alias);
  }
}

class SentenceTranslation extends DataClass
    implements Insertable<SentenceTranslation> {
  final String sentenceId;
  final String lang;
  final String translation;
  const SentenceTranslation({
    required this.sentenceId,
    required this.lang,
    required this.translation,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['sentence_id'] = Variable<String>(sentenceId);
    map['lang'] = Variable<String>(lang);
    map['translation'] = Variable<String>(translation);
    return map;
  }

  SentenceTranslationsCompanion toCompanion(bool nullToAbsent) {
    return SentenceTranslationsCompanion(
      sentenceId: Value(sentenceId),
      lang: Value(lang),
      translation: Value(translation),
    );
  }

  factory SentenceTranslation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SentenceTranslation(
      sentenceId: serializer.fromJson<String>(json['sentenceId']),
      lang: serializer.fromJson<String>(json['lang']),
      translation: serializer.fromJson<String>(json['translation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sentenceId': serializer.toJson<String>(sentenceId),
      'lang': serializer.toJson<String>(lang),
      'translation': serializer.toJson<String>(translation),
    };
  }

  SentenceTranslation copyWith({
    String? sentenceId,
    String? lang,
    String? translation,
  }) => SentenceTranslation(
    sentenceId: sentenceId ?? this.sentenceId,
    lang: lang ?? this.lang,
    translation: translation ?? this.translation,
  );
  SentenceTranslation copyWithCompanion(SentenceTranslationsCompanion data) {
    return SentenceTranslation(
      sentenceId: data.sentenceId.present
          ? data.sentenceId.value
          : this.sentenceId,
      lang: data.lang.present ? data.lang.value : this.lang,
      translation: data.translation.present
          ? data.translation.value
          : this.translation,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SentenceTranslation(')
          ..write('sentenceId: $sentenceId, ')
          ..write('lang: $lang, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(sentenceId, lang, translation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SentenceTranslation &&
          other.sentenceId == this.sentenceId &&
          other.lang == this.lang &&
          other.translation == this.translation);
}

class SentenceTranslationsCompanion
    extends UpdateCompanion<SentenceTranslation> {
  final Value<String> sentenceId;
  final Value<String> lang;
  final Value<String> translation;
  final Value<int> rowid;
  const SentenceTranslationsCompanion({
    this.sentenceId = const Value.absent(),
    this.lang = const Value.absent(),
    this.translation = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SentenceTranslationsCompanion.insert({
    required String sentenceId,
    required String lang,
    required String translation,
    this.rowid = const Value.absent(),
  }) : sentenceId = Value(sentenceId),
       lang = Value(lang),
       translation = Value(translation);
  static Insertable<SentenceTranslation> custom({
    Expression<String>? sentenceId,
    Expression<String>? lang,
    Expression<String>? translation,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (sentenceId != null) 'sentence_id': sentenceId,
      if (lang != null) 'lang': lang,
      if (translation != null) 'translation': translation,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SentenceTranslationsCompanion copyWith({
    Value<String>? sentenceId,
    Value<String>? lang,
    Value<String>? translation,
    Value<int>? rowid,
  }) {
    return SentenceTranslationsCompanion(
      sentenceId: sentenceId ?? this.sentenceId,
      lang: lang ?? this.lang,
      translation: translation ?? this.translation,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sentenceId.present) {
      map['sentence_id'] = Variable<String>(sentenceId.value);
    }
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (translation.present) {
      map['translation'] = Variable<String>(translation.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SentenceTranslationsCompanion(')
          ..write('sentenceId: $sentenceId, ')
          ..write('lang: $lang, ')
          ..write('translation: $translation, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $WordsTable words = $WordsTable(this);
  late final $WordMeaningsTable wordMeanings = $WordMeaningsTable(this);
  late final $SentencesTable sentences = $SentencesTable(this);
  late final $SentenceTranslationsTable sentenceTranslations =
      $SentenceTranslationsTable(this);
  late final Index idxWordMeaningsLang = Index(
    'idx_word_meanings_lang',
    'CREATE INDEX idx_word_meanings_lang ON word_meanings (lang)',
  );
  late final Index idxSentenceTranslationsLang = Index(
    'idx_sentence_translations_lang',
    'CREATE INDEX idx_sentence_translations_lang ON sentence_translations (lang)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    words,
    wordMeanings,
    sentences,
    sentenceTranslations,
    idxWordMeaningsLang,
    idxSentenceTranslationsLang,
  ];
}

typedef $$WordsTableCreateCompanionBuilder =
    WordsCompanion Function({
      required String id,
      required String word,
      required String wordClass,
      required String level,
      required int sfiRank,
      Value<String?> past,
      Value<String?> pastParticiple,
      Value<String?> plural,
      Value<int> rowid,
    });
typedef $$WordsTableUpdateCompanionBuilder =
    WordsCompanion Function({
      Value<String> id,
      Value<String> word,
      Value<String> wordClass,
      Value<String> level,
      Value<int> sfiRank,
      Value<String?> past,
      Value<String?> pastParticiple,
      Value<String?> plural,
      Value<int> rowid,
    });

final class $$WordsTableReferences
    extends BaseReferences<_$AppDatabase, $WordsTable, Word> {
  $$WordsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$WordMeaningsTable, List<WordMeaning>>
  _wordMeaningsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.wordMeanings,
    aliasName: $_aliasNameGenerator(db.words.id, db.wordMeanings.wordId),
  );

  $$WordMeaningsTableProcessedTableManager get wordMeaningsRefs {
    final manager = $$WordMeaningsTableTableManager(
      $_db,
      $_db.wordMeanings,
    ).filter((f) => f.wordId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_wordMeaningsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SentencesTable, List<Sentence>>
  _sentencesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.sentences,
    aliasName: $_aliasNameGenerator(db.words.id, db.sentences.wordId),
  );

  $$SentencesTableProcessedTableManager get sentencesRefs {
    final manager = $$SentencesTableTableManager(
      $_db,
      $_db.sentences,
    ).filter((f) => f.wordId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_sentencesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WordsTableFilterComposer extends Composer<_$AppDatabase, $WordsTable> {
  $$WordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get word => $composableBuilder(
    column: $table.word,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get wordClass => $composableBuilder(
    column: $table.wordClass,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sfiRank => $composableBuilder(
    column: $table.sfiRank,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get past => $composableBuilder(
    column: $table.past,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pastParticiple => $composableBuilder(
    column: $table.pastParticiple,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get plural => $composableBuilder(
    column: $table.plural,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> wordMeaningsRefs(
    Expression<bool> Function($$WordMeaningsTableFilterComposer f) f,
  ) {
    final $$WordMeaningsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.wordMeanings,
      getReferencedColumn: (t) => t.wordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordMeaningsTableFilterComposer(
            $db: $db,
            $table: $db.wordMeanings,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> sentencesRefs(
    Expression<bool> Function($$SentencesTableFilterComposer f) f,
  ) {
    final $$SentencesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.sentences,
      getReferencedColumn: (t) => t.wordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SentencesTableFilterComposer(
            $db: $db,
            $table: $db.sentences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WordsTableOrderingComposer
    extends Composer<_$AppDatabase, $WordsTable> {
  $$WordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get word => $composableBuilder(
    column: $table.word,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get wordClass => $composableBuilder(
    column: $table.wordClass,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sfiRank => $composableBuilder(
    column: $table.sfiRank,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get past => $composableBuilder(
    column: $table.past,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pastParticiple => $composableBuilder(
    column: $table.pastParticiple,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get plural => $composableBuilder(
    column: $table.plural,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WordsTable> {
  $$WordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get word =>
      $composableBuilder(column: $table.word, builder: (column) => column);

  GeneratedColumn<String> get wordClass =>
      $composableBuilder(column: $table.wordClass, builder: (column) => column);

  GeneratedColumn<String> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get sfiRank =>
      $composableBuilder(column: $table.sfiRank, builder: (column) => column);

  GeneratedColumn<String> get past =>
      $composableBuilder(column: $table.past, builder: (column) => column);

  GeneratedColumn<String> get pastParticiple => $composableBuilder(
    column: $table.pastParticiple,
    builder: (column) => column,
  );

  GeneratedColumn<String> get plural =>
      $composableBuilder(column: $table.plural, builder: (column) => column);

  Expression<T> wordMeaningsRefs<T extends Object>(
    Expression<T> Function($$WordMeaningsTableAnnotationComposer a) f,
  ) {
    final $$WordMeaningsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.wordMeanings,
      getReferencedColumn: (t) => t.wordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordMeaningsTableAnnotationComposer(
            $db: $db,
            $table: $db.wordMeanings,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> sentencesRefs<T extends Object>(
    Expression<T> Function($$SentencesTableAnnotationComposer a) f,
  ) {
    final $$SentencesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.sentences,
      getReferencedColumn: (t) => t.wordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SentencesTableAnnotationComposer(
            $db: $db,
            $table: $db.sentences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WordsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WordsTable,
          Word,
          $$WordsTableFilterComposer,
          $$WordsTableOrderingComposer,
          $$WordsTableAnnotationComposer,
          $$WordsTableCreateCompanionBuilder,
          $$WordsTableUpdateCompanionBuilder,
          (Word, $$WordsTableReferences),
          Word,
          PrefetchHooks Function({bool wordMeaningsRefs, bool sentencesRefs})
        > {
  $$WordsTableTableManager(_$AppDatabase db, $WordsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> word = const Value.absent(),
                Value<String> wordClass = const Value.absent(),
                Value<String> level = const Value.absent(),
                Value<int> sfiRank = const Value.absent(),
                Value<String?> past = const Value.absent(),
                Value<String?> pastParticiple = const Value.absent(),
                Value<String?> plural = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WordsCompanion(
                id: id,
                word: word,
                wordClass: wordClass,
                level: level,
                sfiRank: sfiRank,
                past: past,
                pastParticiple: pastParticiple,
                plural: plural,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String word,
                required String wordClass,
                required String level,
                required int sfiRank,
                Value<String?> past = const Value.absent(),
                Value<String?> pastParticiple = const Value.absent(),
                Value<String?> plural = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WordsCompanion.insert(
                id: id,
                word: word,
                wordClass: wordClass,
                level: level,
                sfiRank: sfiRank,
                past: past,
                pastParticiple: pastParticiple,
                plural: plural,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$WordsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({wordMeaningsRefs = false, sentencesRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (wordMeaningsRefs) db.wordMeanings,
                    if (sentencesRefs) db.sentences,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (wordMeaningsRefs)
                        await $_getPrefetchedData<
                          Word,
                          $WordsTable,
                          WordMeaning
                        >(
                          currentTable: table,
                          referencedTable: $$WordsTableReferences
                              ._wordMeaningsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WordsTableReferences(
                                db,
                                table,
                                p0,
                              ).wordMeaningsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.wordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (sentencesRefs)
                        await $_getPrefetchedData<Word, $WordsTable, Sentence>(
                          currentTable: table,
                          referencedTable: $$WordsTableReferences
                              ._sentencesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WordsTableReferences(
                                db,
                                table,
                                p0,
                              ).sentencesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.wordId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$WordsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WordsTable,
      Word,
      $$WordsTableFilterComposer,
      $$WordsTableOrderingComposer,
      $$WordsTableAnnotationComposer,
      $$WordsTableCreateCompanionBuilder,
      $$WordsTableUpdateCompanionBuilder,
      (Word, $$WordsTableReferences),
      Word,
      PrefetchHooks Function({bool wordMeaningsRefs, bool sentencesRefs})
    >;
typedef $$WordMeaningsTableCreateCompanionBuilder =
    WordMeaningsCompanion Function({
      required String wordId,
      required String lang,
      required String meaning,
      Value<int> rowid,
    });
typedef $$WordMeaningsTableUpdateCompanionBuilder =
    WordMeaningsCompanion Function({
      Value<String> wordId,
      Value<String> lang,
      Value<String> meaning,
      Value<int> rowid,
    });

final class $$WordMeaningsTableReferences
    extends BaseReferences<_$AppDatabase, $WordMeaningsTable, WordMeaning> {
  $$WordMeaningsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WordsTable _wordIdTable(_$AppDatabase db) => db.words.createAlias(
    $_aliasNameGenerator(db.wordMeanings.wordId, db.words.id),
  );

  $$WordsTableProcessedTableManager get wordId {
    final $_column = $_itemColumn<String>('word_id')!;

    final manager = $$WordsTableTableManager(
      $_db,
      $_db.words,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_wordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$WordMeaningsTableFilterComposer
    extends Composer<_$AppDatabase, $WordMeaningsTable> {
  $$WordMeaningsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get lang => $composableBuilder(
    column: $table.lang,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnFilters(column),
  );

  $$WordsTableFilterComposer get wordId {
    final $$WordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.words,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordsTableFilterComposer(
            $db: $db,
            $table: $db.words,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WordMeaningsTableOrderingComposer
    extends Composer<_$AppDatabase, $WordMeaningsTable> {
  $$WordMeaningsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get lang => $composableBuilder(
    column: $table.lang,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get meaning => $composableBuilder(
    column: $table.meaning,
    builder: (column) => ColumnOrderings(column),
  );

  $$WordsTableOrderingComposer get wordId {
    final $$WordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.words,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordsTableOrderingComposer(
            $db: $db,
            $table: $db.words,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WordMeaningsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WordMeaningsTable> {
  $$WordMeaningsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get lang =>
      $composableBuilder(column: $table.lang, builder: (column) => column);

  GeneratedColumn<String> get meaning =>
      $composableBuilder(column: $table.meaning, builder: (column) => column);

  $$WordsTableAnnotationComposer get wordId {
    final $$WordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.words,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordsTableAnnotationComposer(
            $db: $db,
            $table: $db.words,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WordMeaningsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WordMeaningsTable,
          WordMeaning,
          $$WordMeaningsTableFilterComposer,
          $$WordMeaningsTableOrderingComposer,
          $$WordMeaningsTableAnnotationComposer,
          $$WordMeaningsTableCreateCompanionBuilder,
          $$WordMeaningsTableUpdateCompanionBuilder,
          (WordMeaning, $$WordMeaningsTableReferences),
          WordMeaning,
          PrefetchHooks Function({bool wordId})
        > {
  $$WordMeaningsTableTableManager(_$AppDatabase db, $WordMeaningsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WordMeaningsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WordMeaningsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WordMeaningsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> wordId = const Value.absent(),
                Value<String> lang = const Value.absent(),
                Value<String> meaning = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WordMeaningsCompanion(
                wordId: wordId,
                lang: lang,
                meaning: meaning,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String wordId,
                required String lang,
                required String meaning,
                Value<int> rowid = const Value.absent(),
              }) => WordMeaningsCompanion.insert(
                wordId: wordId,
                lang: lang,
                meaning: meaning,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WordMeaningsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({wordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (wordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.wordId,
                                referencedTable: $$WordMeaningsTableReferences
                                    ._wordIdTable(db),
                                referencedColumn: $$WordMeaningsTableReferences
                                    ._wordIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$WordMeaningsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WordMeaningsTable,
      WordMeaning,
      $$WordMeaningsTableFilterComposer,
      $$WordMeaningsTableOrderingComposer,
      $$WordMeaningsTableAnnotationComposer,
      $$WordMeaningsTableCreateCompanionBuilder,
      $$WordMeaningsTableUpdateCompanionBuilder,
      (WordMeaning, $$WordMeaningsTableReferences),
      WordMeaning,
      PrefetchHooks Function({bool wordId})
    >;
typedef $$SentencesTableCreateCompanionBuilder =
    SentencesCompanion Function({
      required String id,
      required String wordId,
      required String category,
      required String content,
      Value<int> rowid,
    });
typedef $$SentencesTableUpdateCompanionBuilder =
    SentencesCompanion Function({
      Value<String> id,
      Value<String> wordId,
      Value<String> category,
      Value<String> content,
      Value<int> rowid,
    });

final class $$SentencesTableReferences
    extends BaseReferences<_$AppDatabase, $SentencesTable, Sentence> {
  $$SentencesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WordsTable _wordIdTable(_$AppDatabase db) => db.words.createAlias(
    $_aliasNameGenerator(db.sentences.wordId, db.words.id),
  );

  $$WordsTableProcessedTableManager get wordId {
    final $_column = $_itemColumn<String>('word_id')!;

    final manager = $$WordsTableTableManager(
      $_db,
      $_db.words,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_wordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $SentenceTranslationsTable,
    List<SentenceTranslation>
  >
  _sentenceTranslationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.sentenceTranslations,
        aliasName: $_aliasNameGenerator(
          db.sentences.id,
          db.sentenceTranslations.sentenceId,
        ),
      );

  $$SentenceTranslationsTableProcessedTableManager
  get sentenceTranslationsRefs {
    final manager = $$SentenceTranslationsTableTableManager(
      $_db,
      $_db.sentenceTranslations,
    ).filter((f) => f.sentenceId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _sentenceTranslationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SentencesTableFilterComposer
    extends Composer<_$AppDatabase, $SentencesTable> {
  $$SentencesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );

  $$WordsTableFilterComposer get wordId {
    final $$WordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.words,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordsTableFilterComposer(
            $db: $db,
            $table: $db.words,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> sentenceTranslationsRefs(
    Expression<bool> Function($$SentenceTranslationsTableFilterComposer f) f,
  ) {
    final $$SentenceTranslationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.sentenceTranslations,
      getReferencedColumn: (t) => t.sentenceId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SentenceTranslationsTableFilterComposer(
            $db: $db,
            $table: $db.sentenceTranslations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SentencesTableOrderingComposer
    extends Composer<_$AppDatabase, $SentencesTable> {
  $$SentencesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );

  $$WordsTableOrderingComposer get wordId {
    final $$WordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.words,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordsTableOrderingComposer(
            $db: $db,
            $table: $db.words,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SentencesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SentencesTable> {
  $$SentencesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  $$WordsTableAnnotationComposer get wordId {
    final $$WordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.words,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordsTableAnnotationComposer(
            $db: $db,
            $table: $db.words,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> sentenceTranslationsRefs<T extends Object>(
    Expression<T> Function($$SentenceTranslationsTableAnnotationComposer a) f,
  ) {
    final $$SentenceTranslationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.sentenceTranslations,
          getReferencedColumn: (t) => t.sentenceId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$SentenceTranslationsTableAnnotationComposer(
                $db: $db,
                $table: $db.sentenceTranslations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$SentencesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SentencesTable,
          Sentence,
          $$SentencesTableFilterComposer,
          $$SentencesTableOrderingComposer,
          $$SentencesTableAnnotationComposer,
          $$SentencesTableCreateCompanionBuilder,
          $$SentencesTableUpdateCompanionBuilder,
          (Sentence, $$SentencesTableReferences),
          Sentence,
          PrefetchHooks Function({bool wordId, bool sentenceTranslationsRefs})
        > {
  $$SentencesTableTableManager(_$AppDatabase db, $SentencesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SentencesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SentencesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SentencesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> wordId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> content = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SentencesCompanion(
                id: id,
                wordId: wordId,
                category: category,
                content: content,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String wordId,
                required String category,
                required String content,
                Value<int> rowid = const Value.absent(),
              }) => SentencesCompanion.insert(
                id: id,
                wordId: wordId,
                category: category,
                content: content,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SentencesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({wordId = false, sentenceTranslationsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (sentenceTranslationsRefs) db.sentenceTranslations,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (wordId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.wordId,
                                    referencedTable: $$SentencesTableReferences
                                        ._wordIdTable(db),
                                    referencedColumn: $$SentencesTableReferences
                                        ._wordIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (sentenceTranslationsRefs)
                        await $_getPrefetchedData<
                          Sentence,
                          $SentencesTable,
                          SentenceTranslation
                        >(
                          currentTable: table,
                          referencedTable: $$SentencesTableReferences
                              ._sentenceTranslationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SentencesTableReferences(
                                db,
                                table,
                                p0,
                              ).sentenceTranslationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.sentenceId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$SentencesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SentencesTable,
      Sentence,
      $$SentencesTableFilterComposer,
      $$SentencesTableOrderingComposer,
      $$SentencesTableAnnotationComposer,
      $$SentencesTableCreateCompanionBuilder,
      $$SentencesTableUpdateCompanionBuilder,
      (Sentence, $$SentencesTableReferences),
      Sentence,
      PrefetchHooks Function({bool wordId, bool sentenceTranslationsRefs})
    >;
typedef $$SentenceTranslationsTableCreateCompanionBuilder =
    SentenceTranslationsCompanion Function({
      required String sentenceId,
      required String lang,
      required String translation,
      Value<int> rowid,
    });
typedef $$SentenceTranslationsTableUpdateCompanionBuilder =
    SentenceTranslationsCompanion Function({
      Value<String> sentenceId,
      Value<String> lang,
      Value<String> translation,
      Value<int> rowid,
    });

final class $$SentenceTranslationsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $SentenceTranslationsTable,
          SentenceTranslation
        > {
  $$SentenceTranslationsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SentencesTable _sentenceIdTable(_$AppDatabase db) =>
      db.sentences.createAlias(
        $_aliasNameGenerator(
          db.sentenceTranslations.sentenceId,
          db.sentences.id,
        ),
      );

  $$SentencesTableProcessedTableManager get sentenceId {
    final $_column = $_itemColumn<String>('sentence_id')!;

    final manager = $$SentencesTableTableManager(
      $_db,
      $_db.sentences,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sentenceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SentenceTranslationsTableFilterComposer
    extends Composer<_$AppDatabase, $SentenceTranslationsTable> {
  $$SentenceTranslationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get lang => $composableBuilder(
    column: $table.lang,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => ColumnFilters(column),
  );

  $$SentencesTableFilterComposer get sentenceId {
    final $$SentencesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.sentenceId,
      referencedTable: $db.sentences,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SentencesTableFilterComposer(
            $db: $db,
            $table: $db.sentences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SentenceTranslationsTableOrderingComposer
    extends Composer<_$AppDatabase, $SentenceTranslationsTable> {
  $$SentenceTranslationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get lang => $composableBuilder(
    column: $table.lang,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => ColumnOrderings(column),
  );

  $$SentencesTableOrderingComposer get sentenceId {
    final $$SentencesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.sentenceId,
      referencedTable: $db.sentences,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SentencesTableOrderingComposer(
            $db: $db,
            $table: $db.sentences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SentenceTranslationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SentenceTranslationsTable> {
  $$SentenceTranslationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get lang =>
      $composableBuilder(column: $table.lang, builder: (column) => column);

  GeneratedColumn<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => column,
  );

  $$SentencesTableAnnotationComposer get sentenceId {
    final $$SentencesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.sentenceId,
      referencedTable: $db.sentences,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SentencesTableAnnotationComposer(
            $db: $db,
            $table: $db.sentences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SentenceTranslationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SentenceTranslationsTable,
          SentenceTranslation,
          $$SentenceTranslationsTableFilterComposer,
          $$SentenceTranslationsTableOrderingComposer,
          $$SentenceTranslationsTableAnnotationComposer,
          $$SentenceTranslationsTableCreateCompanionBuilder,
          $$SentenceTranslationsTableUpdateCompanionBuilder,
          (SentenceTranslation, $$SentenceTranslationsTableReferences),
          SentenceTranslation,
          PrefetchHooks Function({bool sentenceId})
        > {
  $$SentenceTranslationsTableTableManager(
    _$AppDatabase db,
    $SentenceTranslationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SentenceTranslationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SentenceTranslationsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$SentenceTranslationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> sentenceId = const Value.absent(),
                Value<String> lang = const Value.absent(),
                Value<String> translation = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SentenceTranslationsCompanion(
                sentenceId: sentenceId,
                lang: lang,
                translation: translation,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String sentenceId,
                required String lang,
                required String translation,
                Value<int> rowid = const Value.absent(),
              }) => SentenceTranslationsCompanion.insert(
                sentenceId: sentenceId,
                lang: lang,
                translation: translation,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SentenceTranslationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({sentenceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (sentenceId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.sentenceId,
                                referencedTable:
                                    $$SentenceTranslationsTableReferences
                                        ._sentenceIdTable(db),
                                referencedColumn:
                                    $$SentenceTranslationsTableReferences
                                        ._sentenceIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SentenceTranslationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SentenceTranslationsTable,
      SentenceTranslation,
      $$SentenceTranslationsTableFilterComposer,
      $$SentenceTranslationsTableOrderingComposer,
      $$SentenceTranslationsTableAnnotationComposer,
      $$SentenceTranslationsTableCreateCompanionBuilder,
      $$SentenceTranslationsTableUpdateCompanionBuilder,
      (SentenceTranslation, $$SentenceTranslationsTableReferences),
      SentenceTranslation,
      PrefetchHooks Function({bool sentenceId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$WordsTableTableManager get words =>
      $$WordsTableTableManager(_db, _db.words);
  $$WordMeaningsTableTableManager get wordMeanings =>
      $$WordMeaningsTableTableManager(_db, _db.wordMeanings);
  $$SentencesTableTableManager get sentences =>
      $$SentencesTableTableManager(_db, _db.sentences);
  $$SentenceTranslationsTableTableManager get sentenceTranslations =>
      $$SentenceTranslationsTableTableManager(_db, _db.sentenceTranslations);
}
