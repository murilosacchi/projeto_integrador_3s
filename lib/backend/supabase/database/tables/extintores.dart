import '../database.dart';

class ExtintoresTable extends SupabaseTable<ExtintoresRow> {
  @override
  String get tableName => 'extintores';

  @override
  ExtintoresRow createRow(Map<String, dynamic> data) => ExtintoresRow(data);
}

class ExtintoresRow extends SupabaseDataRow {
  ExtintoresRow(super.data);

  @override
  SupabaseTable get table => ExtintoresTable();

  String get patrimonio => getField<String>('Patrimonio')!;
  set patrimonio(String value) => setField<String>('Patrimonio', value);

  String? get numEquip => getField<String>('Num_Equip');
  set numEquip(String? value) => setField<String>('Num_Equip', value);

  String? get tipo => getField<String>('Tipo');
  set tipo(String? value) => setField<String>('Tipo', value);

  String? get capac => getField<String>('Capac');
  set capac(String? value) => setField<String>('Capac', value);
}
