import '../lib/sequence.dart';

void main() {
  try {
    sequenceDNA validSequence = sequenceDNA('ATCG');
    print('Valid sequence: $validSequence');
  } catch (e) {
    print('Exception caught: $e');
  }

  sequenceDNA randomSequence = sequenceDNA.random(10);
  print('Random sequence: $randomSequence');

  sequenceDNA reversedSequence = randomSequence.reverse;
  print('Reversed sequence: $reversedSequence');

  sequenceDNA complementSequence = randomSequence.complement;
  print('Complement sequence: $complementSequence');

  String nucleotide = 'A';
  int occurrences = randomSequence.countOccurrences(nucleotide);
  print('Occurrences of $nucleotide: $occurrences');

  print('Maria Graziela Brito de Souza');
}
