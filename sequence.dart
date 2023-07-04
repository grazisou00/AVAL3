import 'dart:math';

class sequenceDNA {
  String sequence;
  sequenceDNA(this.sequence) {
    if (!_isValidSequence(sequence)) {
      throw Exception('invalid DNA sequence');
    }
  }
  factory sequenceDNA.random(int length) {
    String sequence = '';
    Random random = Random();
    for (int i = 0; i < length; i++) {
      int index = random.nextInt(4);
      sequence += ['A', 'T', 'C', 'G'][index];
    }
    return sequenceDNA(sequence);
  }
  String toString() {
    return sequence;
  }

  sequenceDNA get reverse {
    return sequenceDNA(sequence.split('').reversed.join(''));
  }

  sequenceDNA get complement {
    String complementSequence = '';
    for (var base in sequence.split('')) {
      complementSequence += _getComplementBase(base);
    }
    return sequenceDNA(complementSequence);
  }

  int countOccurrences(String nucleotide) {
    if (!_isValidNucleotide(nucleotide)) {
      throw Exception('invalid Nucleotide');
    }
    return sequence.split(nucleotide).length - 1;
  }

  bool _isValidSequence(String sequence) {
    return RegExp('^[ATCG]*\$').hasMatch(sequence);
  }

  bool _isValidNucleotide(String nucleotide) {
    return ['A', 'T', 'C', 'G'].contains(nucleotide);
  }

  String _getRandomBase(Random random) {
    int index = random.nextInt(4);
    return ['A', 'T', 'C', 'G'][index];
  }

  String _getComplementBase(String base) {
    switch (base) {
      case 'A':
        return 'T';
      case 'T':
        return 'A';
      case 'C':
        return 'G';
      case 'G':
        return 'c';
    }
    return '';
  }
}
