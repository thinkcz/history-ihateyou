object Form1: TForm1
  Left = 230
  Top = 196
  Width = 326
  Height = 198
  Caption = 'Antivirus pro ILOVEYOU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object state1: TLabel
    Left = 64
    Top = 16
    Width = 139
    Height = 13
    Caption = 'Test na přítomnost v systému'
  end
  object state2: TLabel
    Left = 64
    Top = 40
    Width = 107
    Height = 13
    Caption = 'Odstranění ze systému'
  end
  object state3: TLabel
    Left = 64
    Top = 64
    Width = 109
    Height = 13
    Caption = 'Sken souborů na disku'
  end
  object out1: TLabel
    Left = 248
    Top = 16
    Width = 57
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object out2: TLabel
    Left = 248
    Top = 40
    Width = 57
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object out3: TLabel
    Left = 248
    Top = 64
    Width = 57
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 8
    Top = 16
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      055449636F6E0000010002002020100001000400E80200002600000020200000
      01000800A80800000E0300002800000020000000400000000100040000000000
      8002000000000000000000001000000000000000000000000000800000800000
      00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
      00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000002000000040000000
      0100080000000000800400000000000000000000000100000000000000000000
      000080000080000000808000800000008000800080800000C0C0C000C0DCC000
      F0CAA600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF00
      0092DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF00
      6B8FFF004873FF002557FF000055FF000049DC00003DB9000031960000257300
      00195000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE00
      0000DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF00
      8F6BFF007348FF005725FF005500FF004900DC003D00B9003100960025007300
      19005000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF00
      9200DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00
      FF6BFF00FF48FF00FF25FF00FE00FE00DC00DC00B900B9009600960073007300
      50005000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00
      DC009200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00
      FF6B8F00FF487300FF255700FF005500DC004900B9003D009600310073002500
      50001900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000
      DC000000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00
      FF8F6B00FF734800FF572500FF550000DC490000B93D00009631000073250000
      50190000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000
      DC920000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00
      FFFF6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B900009696000073730000
      50500000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF0000
      92DC00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E00
      8FFF6B0073FF480057FF250055FF000049DC00003DB900003196000025730000
      19500000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE0000
      00DC000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB00
      6BFF8F0048FF730025FF570000FF550000DC490000B93D000096310000732500
      00501900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA00
      00DC920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF00
      6BFFFF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B9000096960000737300
      00505000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA00
      9E9E9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A00
      3E3E3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A00080808000
      0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
      0000000000000000000000000000000000000000000000000000000000EBEBEB
      EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEC0000000000EBFFF7
      F7F7F7F7F7F7F7F7F7F700EBF7F7F7F7F7F7F7F7F7F7F7EAEC00000000EBFFE4
      FFFFFFFFFFFFFFFFFF00000007E3FFFFFFFFFFFFFFEAF7EAECEE000000EBFFE4
      ECECECECECECECEC00000DEA00EBECECECECECECECEAF7EAECEE000000EBFFE4
      FFFFFFFFFFFFFFFF0011D8D8130007E3FFFFFFFFFFEAF7EAECEE000000EBFFE4
      ECECECECECECEC00000DD8240D1300ECECECECECECEAF7EAECEE000000EBFFE4
      E4E4E4E5E5E5E50011D8EA0DD80D1300EBEAEAEAEAEAF7EAECEE000000EBFFE4
      E4E4E5E5E5E500000DEA0DD8240DD81300EB0202D5EAF7EAECEE000000EBFFE3
      E4E4E4E4E5E50011EA0DD8EA0DD8240D1300B8B802EAF7EAECEE000000EBFFFF
      FFFFFFFFFF002CEA0DD8EA0DD8240DDB0D130007FFFFFFEAECEE00000000EBE7
      E7E7E7E7E700EE0CD8EA0DD8EA0DDBEA0DDB1300EBE7E7E7ECEE0000000000EC
      EAEAEAEA002C0DD8EA0DD8EA0DDBEA0DDB11D81300EBEAEAEAEE000000000000
      ECECEEEE2CEED8EA0DD8EA0DDBEA0DDB11D8DB0D1300EEECECEC000000000000
      00000000002CEA0DD8EA0DDBEA0DDB11D8DB11D80D0300000000000000000000
      000000007F002CD8EA0DDBEA0DDB11D8DB11D8DB110D2C000000000000000000
      000000007F7B002C0DDBEA0DDB11D8DB11D8FF110D0000000000000000000000
      0000007F7B6279002CEA0DDB11D8DB11D8DB110D000000000000000000000000
      0000007F627B7B86002CD811D8DB11D8FF110000000000000000000000000000
      0000007F7B7B7B7985002CD8DB11D8FF00000000000000000000000000000000
      0000007B7B8779796A85002CEA0D000000000000000000000000000000000000
      000074628779796A8E8E88000000000000000000000000000000000000000000
      0000628885858E86867B00000000000000000000000000000000000000000000
      748879850000000000000000000000000000000000000000000000000000007F
      8886840000000000000000000000000000000000000000000000000000000079
      868E850000000000000000000000000000000000000000000000000000000079
      8E84000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000C000000F
      8000000780000003800000018000000180000001800000018000000180000001
      8000000180000001C0000001E0000001F0000003FE00001FFE00000FFE00001F
      FC00007FFC0000FFFC0003FFFC000FFFF8003FFFF000FFFFE003FFFFC07FFFFF
      C0FFFFFFC1FFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = Image1Click
  end
  object state4: TLabel
    Left = 64
    Top = 88
    Width = 156
    Height = 13
    Caption = 'Odstranění infikovaných souborů'
  end
  object out4: TLabel
    Left = 248
    Top = 88
    Width = 57
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object info: TLabel
    Left = 8
    Top = 120
    Width = 305
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 152
    Width = 318
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Written by Martin Hron © 2000 ARTIQ, v.o.s.'
  end
end
