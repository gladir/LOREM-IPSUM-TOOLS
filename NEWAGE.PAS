{ @author: Sylvain Maltais (support@gladir.com)
  @created: 2024
  @website(https://www.gladir.com/lorem-ipsum-tools)
  @abstract(Target: Turbo Pascal 7, Free Pascal 3.2)
}

Program NEWAGE;

Uses Strings;

Const
 Words:Array[0..396]of PChar=(
  'cosmos','beings','turbulence','consciousness','souls','circuit',
  'travellers','entities','lifeforms','dreamweavers','adventurers',
  'quantum leap','flowering','enlightened','quantum soup','infinite',
  'chakras','mission','journey','path','quest','vision quest','story',
  'electrical impulses','a resonance cascade','bio-electricity',
  'ancient','powerful','spiritual','higher','advanced','internal','sublime',
  'recreated','reborn','guided','aligned','enveloped in','transformed into',
  'quantum cycle','nexus','planet','solar system','world','stratosphere',
  'life','healing','potential','freedom','purpose','coherence','choice',
  'homeopathy','aromatherapy','ayurvedic medicine','faith healing',
  'summoning','unveiling','redefining','condensing','ennobling','aglow with',
  'wisdom','stardust','sharing','science','curiosity','hope','wonder',
  'pilgrims','warriors','messengers','dreamers','storytellers','being',
  'unifying','ozmosis','vision','uprising','explosion','unfolding',
  'child','traveller','entity','lifeform','wanderer','visitor','prophet',
  'universe','galaxy','multiverse','grid','quantum matrix','totality',
  'dreamscape','pain','suffering','stagnation','desire','bondage','greed',
  'selfishness','ego','dogma','illusion','delusion','yearning',
  'technological','dynamic','life-affirming','sensual','unrestricted',
  'discontinuity','materialism','nature','beauty','knowledge','truth',
  'rejuvenation','ecstasy','aspiration','complexity','serenity','lives',
  'passion','understanding','balance','growth','inspiration',
  'conscious living','energy','health','spacetime','learning','being',
  'faith','fulfillment','peace','rebirth','self-actualization','presence',
  'power','will','flow','potential','potentiality','chi','intuition',
  'synchronicity','wellbeing','joy','love','karma','life-force','awareness',
  'guidance','transformation','grace','divinity','non-locality',
  'create','spark','reveal','generate','leverage', 'enlighten','inspire',
  'inseparability','interconnectedness','transcendence','empathy','insight',
  'supercharged waveforms','pulses','transmissions','morphogenetic fields',
  'dreams','hopes','bodies','hearts','brains','third eyes','essences',
  'myth','evolution','spark','lightning bolt','reintegration','vector',
  'rebirth','revolution','wellspring','fount','source','fusion','canopy',
  'flow','network','current','transmission','oasis','quantum shift',
  'paradigm shift','metamorphosis','harmonizing','reimagining','rekindling',
  'blossoming','awakening','deepening','refining','maturing','evolving',
  'buzzing with','beaming with','full of','overflowing with','radiating',
  'bursting with','electrified with','zero-point','quantum','high-frequency',
  'Vedic','non-dual','conscious','sentient','sacred','infinite','primordial',
  'ever-present','endless','ethereal','astral','cosmic','spatial',
  'transformative','unified','non-local','mystical','divine','self-aware',
  'magical','amazing','interstellar','unlimited','authentic','angelic',
  'karmic','psychic','pranic','consciousness-expanding','perennial',
  'heroic','archetypal','mythic','intergalatic','holistic','joyous',
  'sublime','epic','unimaginable','colossal','unfathomable','magnificent',
  'enormous','jaw-dropping','ecstatic','powerful','untold','astonishing',
  'incredible','breathtaking','staggering','ultra-','supra-','hyper-',
  'pseudo-','inspire','integrate','ignite','discover','rediscover','foster',
  'release','manifest','harmonize','engender','bring forth','bring about',
  'empower','unify','strengthen','recreate','fulfill','change','develop',
  'heal','awaken','synergize','ground','bless','beckon','exist','believe',
  'grow','live','dream','reflect','heal','vibrate','self-actualize',
  'destroy','eliminate','shatter','disrupt','sabotage','exterminate',
  'obliterate','eradicate','extinguish','erase','confront','richness',
  'truth','growth','nature','healing','knowledge','awakened','re-energized',
  'nurtured by','opened by','immersed in','engulfed in','baptized in',
  'in this dimension','outside time','within the Godhead',
  'at home in the cosmos','through non-local interactions',
  'inherent in nature','at the quantum level','at the speed of light',
  'of unfathomable proportions','on a cosmic scale','devoid of self',
  'of the creative act','expanding wave functions',
  'superpositions of possibilities', 'electromagnetic forces',
  'electromagnetic resonance','molecular structures','atomic ionization',
  'ultrasonic energy','sonar energy','vibrations','frequencies',
  'four-dimensional superstructures','ultra-sentient particles',
  'sub-atomic particles','chaos-driven reactions','supercharged electrons',
  'bio-feedback','meridians','alternative medicine','astrology','tarot',
  'crystal healing','the akashic record','feng shui','acupuncture',
  'prayer','astral projection','Kabala','reiki','naturopathy','numerology',
  'affirmations','the Law of Attraction','open up','give us access to',
  'enable us to access','remove the barriers to','clear a path toward',
  'let us access','tap into','align us with','traverse','walk','follow',
  'engage with','go along','roam','navigate','wander','embark on'
 );

Function StrToCapital(S:String):String;Begin
 If Length(S)=0 Then StrToCapital:=''
                Else StrToCapital:=UpCase(S[1])+Copy(S,2,255);
End;

Function Gauss:Real;
Var
 U,V,X,Y:Real;
Begin
 X:=Random;
 Y:=Random;
 U:=Sqrt(-2*Ln(X))*Cos(2*PI*Y);
 V:=Sqrt(-2*Ln(X))*Sin(2*PI*Y);
 Gauss:=U;
End;

Function GaussMs(M,S:Real):Real;Begin
 GaussMs:=Gauss+S+M;
End;

Function GaussSentence:Integer;Begin
 GaussSentence:=Round(GaussMs(2.460,5.080));
End;

Procedure GetWords(Count:Integer;LoremIpsum:Boolean);
Var
 I,NumWord,_Index,LenSentence:Integer;
 Capital:Boolean;
 LastWord:String;
Begin
 Capital:=True;
 LenSentence:=GaussSentence;
 I:=0;NumWord:=0;
 If(LoremIpsum)Then Begin
  I:=2;
  Write('Newage ');
  Write('Ipsum ');
  NumWord:=2;
 End;
 While(I<Count)do Begin
  _Index:=Random(High(Words));
  If LastWord=StrPas(Words[_Index])Then _Index:=Random(High(Words));
  If(Capital)Then Begin
   Write(StrToCapital(StrPas(Words[_Index])));
   Capital:=False;
  End
   Else
  Write(StrPas(Words[_Index]));
  If I+1<Count Then Begin
   If NumWord>=LenSentence Then Begin
    LenSentence:=GaussSentence;
    Case Random(2) of
     0:Write(', ');
     1:Begin
      Write('. ');
      Capital:=True;
     End;
    End;
    NumWord:=0;
   End
    Else
   Begin
    Write(' ');
    Inc(NumWord);
    Capital:=False;
   End;
  End;
  LastWord:=StrPas(Words[_Index]);
  Inc(I);
 End;
 Write('.');
End;

Var
 Len,I:Integer;
 Err:Word;


BEGIN
 If(ParamStr(1)='/?')or(ParamStr(1)='--help')or(ParamStr(1)='-h')or
   (ParamStr(1)='/h')or(ParamStr(1)='/H')Then Begin
  WriteLn('NEWAGE : Cette commande permet de gÇnÇrer du ',
                      'texte alÇatoirement sur le nouvelle ',
                      'age (Newage Ipsum).');
  WriteLn;
  WriteLn('Syntaxe : NEWAGE longueur');
  WriteLn;
  WriteLn(' longueur  Ce parametre permet d''indiquer le nombre de mots a gÇnÇrer');
 End
  Else
 If ParamCount>0Then Begin
  Randomize;
  For I:=1 to ParamCount do Begin
   Val(ParamStr(I),Len,Err);
   If Err>0Then Begin
    WriteLn('Valeur invalide');
    Halt;
   End;
   GetWords(Len,I=1);
   If ParamCount>1 Then Begin
    WriteLn;
    WriteLn;
   End;
  End;
 End
  Else
 WriteLn('Paramätre requis');
END.


