{PROJET REALISE PAR RICK LIONEL ONANA
LinkedIn: https://linkedin.com/in/rlo/ }
Program QVGDM;
  uses graph,crt,dos;
     type tab = array [1..7] of string;
      tQuestion = record

                Q, R1, R2, R3,R4,P,NC1,NC2: string;
                choix,MR1,MR2,MR3,MR4:char;
                 a,b,c,d:integer;
                Triangle: array[1..7] of PointType
                 end;
    const    Triangle1: array[1..7] of PointType = ((X:35 ; Y: 350), (X:15 ; Y:370),
   (X:35; Y: 390),(X: 250; Y: 390), (X:270; Y: 370),(X:250; Y: 350),(X:35; Y: 350));
           Triangle2: array[1..7] of PointType = ((X:35 ; Y:400), (X:15 ; Y:420),
   (X:35; Y: 440),(X: 250; Y: 440), (X:270; Y:420),(X:250; Y:400),(X:35; Y:400));
            Triangle3: array[1..7] of PointType = ((X:417; Y: 350), (X:397 ; Y:370),
   (X:417; Y: 390),(X:597; Y: 390), (X:617; Y: 370),(X:597; Y: 350),(X:417; Y: 350));
            Triangle4: array[1..7] of PointType = ((X:417; Y:400), (X:397; Y:420),
   (X:417; Y: 440),(X:597; Y: 440), (X:617; Y:420),(X:597; Y:400),(X:417; Y:400));
    menuder:tab=('1- JOUER','2- QUITTER LE JEU','','','','', '');
                Questions : array[1..15] of tQuestion
   = (
    (Q: 'LE MOT TALKIE-WALKIE SIGNIFIE LITTERALEMENT EN ANGLAIS:';
       R1:'marcheur-parleur' ; R2: 'Emetteur recepteur'; R3: 'parleur-marcheur';
        R4:'parle-marche';P:'   200 $';NC1:'marcheur-parleur'; NC2:'parleur-marcheur';
        choix: 'b';MR1:'a';MR2:'b';MR3:'c';MR4:'d'; a:60; b:60; c:368; d:418;
        triangle:((X:417; Y: 350), (X:397 ; Y:370),
   (X:417; Y: 390),(X:597; Y: 390), (X:617; Y: 370),(X:597; Y: 350),(X:417; Y: 350))),

          (Q: 'QUEL EQUIPE REMPORTE LA CAN D"AFRIQUE 2017 ?';
       R1: 'Egypte'; R2: 'C“te d"ivoire'; R3: 'Ghana';
        R4:'Cameroun';P:'   400 $';NC1:'DJIOMFEU Robinse'; NC2:'DJIONKEP Robinse';
        choix: 'd';MR1:'a';MR2:'b';MR3:'c';MR4:'d'; a:60; b:60; c:368; d:418;
        triangle:((X:417; Y:400), (X:397; Y:420),
   (X:417; Y: 440),(X:597; Y: 440), (X:617; Y:420),(X:597; Y:400),(X:417; Y:400))),

       ( Q:'QUEL SIGNE TERMINE UNE OPERATION EN LANGAGE C ?';
       R1:'Une virgule(,)' ; R2: 'Une interrogation(?)'; R3:'Un point virgule(;)' ;
       R4:'Deux points(:)';P:'   600 $';NC1:'Une interrogation(?)'; NC2:'Deux points(:)';
       choix: 'c';MR1:'a';MR2:'b';MR3:'c';MR4:'d'; a:450; b:450; c:368; d:418;
        triangle:((X:35 ; Y:400), (X:15 ; Y:420),
   (X:35; Y: 440),(X: 250; Y: 440), (X:270; Y:420),(X:250; Y:400),(X:35; Y:400))),

           (Q: '     COMBIEN Y A-T-IL DE CONTINENTS ?';
       R1: '7'; R2: '6'; R3: '8';
        R4:'5';P:'   800 $';NC1:'7'; NC2:'8'; choix: 'd';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
        a:60; b:60; c:368; d:418;   triangle:((X:417; Y:400), (X:397; Y:420),
   (X:417; Y: 440),(X:597; Y: 440), (X:617; Y:420),(X:597; Y:400),(X:417; Y:400))),

       (Q: 'ON DIT DE QUELQ"UN QUI FAIT DE BONNES ACTIONS QU"IL A...';
       R1: 'Le bon bout'; R2: 'Le bon pied'; R3: 'Le bon coeur';
        R4:'La vie du bon cote';P:'   1.000 $';NC1:'Le bon bout'; NC2:'La vie du bon cote';
         choix: 'c';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
       a:60; b:450; c:368; d:418;  triangle:((X:35 ; Y:400), (X:15 ; Y:420),
   (X:35; Y: 440),(X: 250; Y: 440), (X:270; Y:420),(X:250; Y:400),(X:35; Y:400))),

        (Q: 'QUELLE EST LA SIGNIFICATION DU MOT " LAIT " EN ESPAGNOL ?';
       R1:'Lecha' ; R2: 'Leche'; R3: 'Lacho';
        R4:'Lecho';P:'   2.000 $';NC1:'Lecha'; NC2:'Lacho'; choix: 'b';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
        a:60; b:60; c:368; d:418;  triangle:((X:417; Y: 350), (X:397 ; Y:370),
   (X:417; Y: 390),(X:597; Y: 390), (X:617; Y: 370),(X:597; Y: 350),(X:417; Y: 350))),

        (Q: 'DANS LA LEGENDE DU ROI ARTHUR, MERLIN ETAIT-IL...';
       R1: 'Enchanteur'; R2: 'Brocanteur'; R3: 'Senateur';R4:'Conteur';P:'   4.000 $';
       NC1:'Brocanteur'; NC2:'Senateur'; choix: 'a';
       MR1:'a';MR2:'b';MR3:'c';MR4:'d'; a:450; b:60; c:368; d:418;
        triangle:((X:35 ; Y: 350), (X:15 ; Y:370),
   (X:35; Y: 390),(X: 250; Y: 390), (X:270; Y: 370),(X:250; Y: 350),(X:35; Y: 350))),

         (Q: 'UN POUCE EST EGAL A COMBIEN DE CENTIMETRES ?';
       R1: '3.24 cm'; R2: '1.34 cm'; R3: '0.44 cm';
        R4:'2.54 cm';P:'   8.000 $';NC1:'1.34 cm'; NC2:'0.44 cm'; choix: 'd';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
         a:450; b:60; c:368; d:418; triangle:((X:417; Y:400), (X:397; Y:420),
   (X:417; Y: 440),(X:597; Y: 440), (X:617; Y:420),(X:597; Y:400),(X:417; Y:400))),

          (Q: 'QUEL CLUB A REMPORTE LA LIGUE DES CHAMPIONS EN 2008 ?';
       R1: 'FC Barcelone'; R2: 'Inter'; R3: 'Manchester United';
        R4:'Bayern Munich';P:'   16.000 $';NC1:'FC Barcelone'; NC2:'Bayern Munich';
        choix: 'c';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
        a:60; b:450; c:368; d:418; triangle:((X:35 ; Y:400), (X:15 ; Y:420),
   (X:35; Y: 440),(X: 250; Y: 440), (X:270; Y:420),(X:250; Y:400),(X:35; Y:400))),

           (Q: 'QUELLES LETTRES SONT SUR LE BOUTON " 3 " D"UN TELEPHONE ?';
       R1: '"ABC"'; R2: '"MNO'; R3: '"DEF"';
        R4:'"GHI"';P:'    32.000 $';NC1:'"ABC"'; NC2:'"MNO"'; choix: 'c';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
        a:60; b:450; c:368; d:368; triangle:((X:35 ; Y:400), (X:15 ; Y:420),
   (X:35; Y: 440),(X: 250; Y: 440), (X:270; Y:420),(X:250; Y:400),(X:35; Y:400))),

              (Q: '      QUELLE EST LA CAPITALE DES " PHILIPPINES " ?';
       R1: 'Manila'; R2: 'Lima'; R3: 'Doha';R4:'San Juan';P:'    64.000 $';
       NC1:'Doha'; NC2:'San Juan'; choix: 'a';
       MR1:'a';MR2:'b';MR3:'c';MR4:'d';  a:60; b:450; c:418; d:418;
        triangle:((X:35 ; Y: 350), (X:15 ; Y:370),
   (X:35; Y: 390),(X: 250; Y: 390), (X:270; Y: 370),(X:250; Y: 350),(X:35; Y: 350))),

           (Q: 'QUEL CONSTITUANT CHIMIQUE N"EST PAS UNE BASE AZOTE ?';
       R1: 'L"adenine'; R2: 'La cytosine'; R3: 'La guanine';
        R4:'La cellulose';P:'    125.000 $';NC1:'L"adenine'; NC2:'La guanine'; choix: 'd';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
        a:60; b:60; c:368; d:418; triangle:((X:417; Y:400), (X:397; Y:420),
   (X:417; Y: 440),(X:597; Y: 440), (X:617; Y:420),(X:597; Y:400),(X:417; Y:400))),

    (Q: 'EN QUELLE ANNEE A ETE CREE LE 1er ORDINATEUR " ENIAC " ?';
       R1:'1944' ; R2: '1946'; R3: '1950';
       R4:'1955';P:'    250.000 $';NC1:'1950'; NC2:'1955'; choix: 'b';MR1:'a';MR2:'b';MR3:'c';MR4:'d';
       a:60; b:450; c:418; d:418; triangle:((X:417; Y: 350), (X:397 ; Y:370),
   (X:417; Y: 390),(X:597; Y: 390), (X:617; Y: 370),(X:597; Y: 350),(X:417; Y: 350))),

          (Q: '     LAQUELLE DE CES COULEURS N"EXISTE PAS ?';
       R1: 'Le vert cerise '; R2: 'Le vert citron'; R3: 'Le vert pomme';R4:'Le vert emeraude';P:'    500.000 $';
      NC1:'Le vert citron'; NC2:'Le vert pomme'; choix: 'a'; MR1:'a';MR2:'b';MR3:'c';MR4:'d';
      a:450; b:60; c:368; d:418; triangle:((X:35 ; Y: 350), (X:15 ; Y:370),
   (X:35; Y: 390),(X: 250; Y: 390), (X:270; Y: 370),(X:250; Y: 350),(X:35; Y: 350))),


        (Q: 'DANS LA BIBLE, COMBIEN D"ENFANTS JACOB EUT AVEC SES 2 FEMMES ?';
       R1: '12'; R2: '15'; R3: '10';R4:'13';P:'    1.000.000 $';NC1:'15'; NC2:'13'; choix: 'a';
       MR1:'a';MR2:'b';MR3:'c';MR4:'d';
       a:450; b:450; c:3688; d:418; triangle:((X:35 ; Y: 350), (X:15 ; Y:370),
   (X:35; Y: 390),(X: 250; Y: 390), (X:270; Y: 370),(X:250; Y: 350),(X:35; Y: 350))));

       var
        question,reponseA,reponseB,reponseC,reponseD:string;
        Gd,Gm,i,j,n,p:integer;
        dialogue:string;
        valider,choix,reponse,cinq,rep:char; color:word;


           procedure curseur(visible:boolean);
var reg: registers;   {cacher le curseur}
begin
with reg do
begin
ax:=$0300;bx:=0;intr($10,reg);
if  visible then cx:=cx and $cfff
            else cx:=cx or $3000;
    ax:=$0100; intr($10,reg);
    end;
    end;
    procedure menudeur(menu:tab;n,i:byte{; var i:byte;x0,x1,h:byte});
var j,j1,i3:byte;
    o:boolean;
    d:char;
begin    i3:=1;   j:=0;
 repeat  o:=false; j1:=0;
{menuder(menu,n NbreDeRbriq,i TypeDeRbriq,x0 PosX,x1 LgTraitHoriz,h PosY);}
  d:=readkey;
 if ord(d)=0 then begin
  d:=readkey;
 if (d=chr(072)){Haut} then i:=i-1 else
 if (d=chr(080)){Bas} then i:=i+1;
 if i=n+1 then i:=1 else
 if i=0   then i:=n;
           end else begin

 if d=chr(27){Echap} then
    begin  i:=n;
           d:=chr(13){Entree};
    end;end;
until (d=chr(13));
end;

    procedure affichage;
    begin
      setcolor(13);
   setLineStyle(userbitln,2456,thickwidth);
     Ellipse(300, 120, 0, 360, 100, 70);
     Ellipse(300, 120, 0, 360, 80, 50);
        setcolor(15);
     SetTextStyle(DefaultFont, HorizDir,1);
     {Texte QUI VEUT GAGNER DES}
     outTextXY(213,95,'Q'); delay(200); outTextXY(220,85,'U');delay(200); outTextXY(230,78,'I');delay(200);
     outTextXY(253,65,'V');delay(200); outTextXY(264,62,'E');delay(200); outTextXY(275,60,'U');
     delay(200);outTextXY(286,59,'T'); delay(200);
      outTextXY(305,59,'G'); delay(200); outTextXY(316,60,'A');delay(200); outTextXY(326,62,'G');
      delay(200); outTextXY(337,65,'N');delay(200);
       outTextXY(348,69,'E');delay(200); outTextXY(358,73,'R');delay(200);
        outTextXY(370,83,'D');delay(200); outTextXY(378,92,'E');delay(200); outTextXY(385,101,'S');
        { Revers du Texte}
        outTextXY(382,141,'S');delay(200); outTextXY(374,150,'E');delay(200);  outTextXY(366,158,'D');
    delay(200); outTextXY(351,166,'R');delay(200); outTextXY(341,169,'E');delay(200);outTextXY(330,173,'N');
     delay(200); outTextXY(318,176,'G');delay(200); outTextXY(309,177,'A');delay(200);  outTextXY(298,178,'G');
     delay(200);  outTextXY(281,176,'T');delay(200);outTextXY(270,174,'U');delay(200);
       outTextXY(259,171,'E');delay(200); outTextXY(248,167,'V');delay(200); outTextXY(231,160,'I');delay(200);
        outTextXY(221,153,'U');delay(200); outTextXY(213,143,'Q');
            {fin du Texte}
           SetTextStyle(DefaultFont, HorizDir,3);
     outTextXY(208,115,'M');delay(1000); outTextXY(237,115,'I');delay(1000);
     outTextXY(261,115,'L');delay(1000); outTextXY(283,115,'L');delay(1000);
     outTextXY(305,115,'I');delay(1000); outTextXY(327,115,'O');delay(1000);
     outTextXY(350,115,'N');delay(1000); outTextXY(371,115,'S');delay(1000);
   end;
         procedure Jeu;
         begin randomize;
          p:=250;
          i:=1;
          cinq:='r';
         question:=Questions[i].Q;
         outTextXY(110,297,question);
           delay(2000);
            reponseA:=Questions[i].R1;
           outTextXY(60,368,reponseA);
             delay(1500);
               reponseC:=Questions[i].R2;
           outTextXY(450,368,reponseC);
              delay(1500);
             reponseB:=Questions[i].R3;;
            outTextXY(60,418,reponseB);
              delay(1500);
              reponseD:=Questions[i].R4;
           outTextXY(450,418,reponseD);
               delay(1500);
              for j:=1 to 15 do  begin
             outTextXY(240,228,'Votre reponse: . .');
             gotoxy(47,15); readln(choix); delay(1000);

         if choix=cinq then begin
              setcolor(0);
              outTextXY(240,228,'Votre reponse: .Ы.'); outTextXY(240,225,'Votre reponse: .Ы.');
              dialogue:='ORDINATEUR VEUILLEZ RETIREZ DEUX(02) ';
            setcolor(15); outTextXY(155,220,dialogue);outTextXY(230,250,'MAUVAISES REPONSES'); delay(5000);
            setcolor(black); outTextXY(155,220,dialogue); outTextXY(230,250,'MAUVAISES REPONSES');
              outTextXY(Questions[i].a,Questions[i].c,Questions[i].NC1);
              outTextXY(Questions[i].b,Questions[i].d,Questions[i].NC2);
              delay(1500);
                setcolor(red);
               setLineStyle(solidln,2456,thickwidth);
               line(15,30,100,90);
               line(100,30,18,95);
               setcolor(0);
                outTextXY(20,110,'  Entrez r ');
             delay(1000);  setcolor(15);
                outTextXY(240,228,'Votre reponse: . .');
             gotoxy(47,15); readln(choix); delay(1000);
                cinq:='[';
    end;

            if choix=Questions[i].choix then
          begin
          setcolor(15);
        DrawPoly(SizeOf(Questions[i].Triangle) div SizeOf(PointType), Questions[i].Triangle);
         delay(3000);  setcolor(0); outTextXY(240,228,'Votre reponse: .Ы.'); outTextXY(240,225,'Votre reponse: .Ы.');
           setcolor(lightGreen);
         DrawPoly(SizeOf(Questions[i].Triangle) div SizeOf(PointType),Questions[i].Triangle);
         setcolor(white); dialogue:='BONNE REPONSE  '; outTextXY(240,220,dialogue);
           delay(2500) ;setcolor(black); outTextXY(240,220,dialogue);setcolor(15);

           if j=5 then begin
            dialogue:='BRAVO ! VOUS AVEZ ATTEINT LE PREMIER PALIER';
            outTextXY(120,220,dialogue); delay(2500);
            setcolor(black); outTextXY(120,220,dialogue);

             end;
             if j=10 then begin
            dialogue:='BRAVO ! VOUS AVEZ ATTEINT LE DEUXIEME PALIER';
            outTextXY(120,220,dialogue); delay(2500);
            setcolor(black); outTextXY(120,220,dialogue); end;
             if j=15 then begin
            dialogue:='FELICITATIONS ! VOUS AVEZ GAGNE LE MILLION';
            outTextXY(120,220,dialogue); delay(2500);
            setcolor(black); outTextXY(120,220,dialogue);
              color:=GetMaxcolor;
                if p < 250 then begin
            setcolor(15);
            outTextXY(512,p+15,Questions[i-1].P);
             end;
            setcolor(13);
            outTextXY(512,p,Questions[i].P);
            setcolor(15);
            delay(2000);
               repeat
             putpixel(random(620),random(640), color); delay(10);
             until keypressed;
              dialogue:='FIN DU JEU'; SetTextStyle(DefaultFont, HorizDir,3);
           outTextXY(220,220,dialogue); delay(2000); exit;
            End;
             outTextXY(255,245,Questions[i].P);  delay(3000); setcolor(black); outTextXY(255,245,Questions[i].P);

           if p < 250 then begin
            setcolor(15);
            outTextXY(512,p+15,Questions[i-1].P);
             end;
            setcolor(13);
            outTextXY(512,p,Questions[i].P);
            setcolor(15);
            delay(2000);
             if p = 190 then begin
                 setcolor(11);
            outTextXY(512,p,Questions[i].P); end;
             if p = 115 then begin
                 setcolor(11);
            outTextXY(512,p,Questions[i].P); end;
             end
            ELSE
          if choix<>Questions[i].choix then begin
            if choix=Questions[i].MR1 then begin
              setcolor(15);
        DrawPoly(SizeOf(Triangle1) div SizeOf(PointType), Triangle1); delay(3000);
        setcolor(0); outTextXY(240,228,'Votre reponse: .Ы.');outTextXY(240,225,'Votre reponse: .Ы.');
          setcolor(red);
           DrawPoly(SizeOf(Triangle1) div SizeOf(PointType), Triangle1);
        setcolor(white);  dialogue:='MAUVAISE REPONSE'; outTextXY(240,220,dialogue);
          delay(3000); setcolor(black); outTextXY(240,220,dialogue); delay(20);
          setcolor(white); dialogue:='LA BONNE REPONSE ETAIT'; outTextXY(240,220,dialogue);
         delay(4000);  setcolor(lightGreen);
          DrawPoly(SizeOf(Questions[i].Triangle) div SizeOf(PointType),Questions[i].Triangle);
           setcolor(black);  outTextXY(240,220,dialogue);  delay(2000);  setcolor(white);
              if j < 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 0 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
             if j >= 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end
          else
          if j< 10  then begin
           dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue);
              end;
           if j >= 10  then begin
            dialogue:='VOUS REPARTEZ AVEC 32000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
          setcolor(15);
            dialogue:='FIN DU JEU'; SetTextStyle(DefaultFont, HorizDir,3);
           outTextXY(220,220,dialogue); delay(2000); exit;
            end;
              if choix=Questions[i].MR2 then begin
              setcolor(15);
        DrawPoly(SizeOf(Triangle3) div SizeOf(PointType), Triangle3); delay(3000);
        setcolor(0); outTextXY(240,228,'Votre reponse: .Ы.'); outTextXY(240,225,'Votre reponse: .Ы.');
          setcolor(red);
           DrawPoly(SizeOf(Triangle3) div SizeOf(PointType), Triangle3);
        setcolor(white);  dialogue:='MAUVAISE REPONSE'; outTextXY(240,220,dialogue);
          delay(3000); setcolor(black); outTextXY(240,220,dialogue); delay(20);
          setcolor(white); dialogue:='LA BONNE REPONSE ETAIT'; outTextXY(240,220,dialogue);
         delay(4000);  setcolor(lightGreen);
         DrawPoly(SizeOf(Questions[i].Triangle) div SizeOf(PointType),Questions[i].Triangle);
           setcolor(black);  outTextXY(240,220,dialogue);  delay(2000);  setcolor(white);
             if j < 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 0 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
             if j >= 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end
          else
          if j< 10  then begin
           dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue);
              end;
           if j >= 10  then begin
            dialogue:='VOUS REPARTEZ AVEC 32000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
          setcolor(15);
            dialogue:='FIN DU JEU'; SetTextStyle(DefaultFont, HorizDir,3);
           outTextXY(220,220,dialogue); delay(2000); exit;
            end;
              if choix=Questions[i].MR3 then begin
              setcolor(15);
        DrawPoly(SizeOf(Triangle2) div SizeOf(PointType), Triangle2); delay(3000);
        setcolor(0); outTextXY(240,228,'Votre reponse: .Ы.');  outTextXY(240,225,'Votre reponse: .Ы.');
          setcolor(red);
           DrawPoly(SizeOf(Triangle2) div SizeOf(PointType), Triangle2);
        setcolor(white);  dialogue:='MAUVAISE REPONSE'; outTextXY(240,220,dialogue);
          delay(3000); setcolor(black); outTextXY(240,220,dialogue); delay(20);
          setcolor(white); dialogue:='LA BONNE REPONSE ETAIT'; outTextXY(240,220,dialogue);
         delay(4000);  setcolor(lightGreen);
         DrawPoly(SizeOf(Questions[i].Triangle) div SizeOf(PointType),Questions[i].Triangle);
           setcolor(black);  outTextXY(240,220,dialogue);  delay(2000);  setcolor(white);
            if j < 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 0 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
             if j = 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
              if j= 6 then begin
              dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
             setcolor(black);   outTextXY(240,220,dialogue);  end;
              if j= 7 then begin
             dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
             setcolor(black);   outTextXY(240,220,dialogue);  end;
             if j= 8 then begin
            dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
             setcolor(black);   outTextXY(240,220,dialogue);  end;
              if j= 9 then begin
             dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
            setcolor(black);   outTextXY(240,220,dialogue);  end;
         if j >= 10  then begin
         dialogue:='VOUS REPARTEZ AVEC 32000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
           setcolor(15);
            dialogue:='FIN DU JEU'; SetTextStyle(DefaultFont, HorizDir,3);
           outTextXY(220,220,dialogue); delay(2000); exit;
            end;
            if choix=Questions[i].MR4 then begin
              setcolor(15);
        DrawPoly(SizeOf(Triangle4) div SizeOf(PointType), Triangle4); delay(3000);
        setcolor(0);   outTextXY(240,228,'Votre reponse: .Ы.');outTextXY(240,225,'Votre reponse: .Ы.');
          setcolor(red);
           DrawPoly(SizeOf(Triangle4) div SizeOf(PointType), Triangle4);
        setcolor(white);  dialogue:='MAUVAISE REPONSE'; outTextXY(240,220,dialogue);
          delay(3000); setcolor(black); outTextXY(240,220,dialogue); delay(20);
          setcolor(white); dialogue:='LA BONNE REPONSE ETAIT'; outTextXY(240,220,dialogue);
         delay(4000);  setcolor(lightGreen);
          DrawPoly(SizeOf(Questions[i].Triangle) div SizeOf(PointType),Questions[i].Triangle);
           setcolor(black);  outTextXY(240,220,dialogue);  delay(2000);  setcolor(white);
             if j < 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 0 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
             if j >= 5  then begin
            dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end
          else
          if j< 10  then begin
           dialogue:='VOUS REPARTEZ AVEC 1000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue);
              end;
           if j >= 10  then begin
            dialogue:='VOUS REPARTEZ AVEC 32000 $';  outTextXY(240,220,dialogue);  delay(2000);
          setcolor(black);   outTextXY(240,220,dialogue); end;
             setcolor(15);
            dialogue:='FIN DU JEU'; SetTextStyle(DefaultFont, HorizDir,3);
           outTextXY(220,220,dialogue); delay(2000); exit;
            end; end;
        { FIN QUESTION }
            {TRANSITION}
           setcolor(black);
            outTextXY(110,297,question); outTextXY(60,368,reponseA); outTextXY(60,418,reponseB);
          outTextXY(450,368,reponseC); outTextXY(450,418,reponseD);
             setcolor(11);
          DrawPoly(SizeOf(Triangle1) div SizeOf(PointType), Triangle1);
          DrawPoly(SizeOf(Triangle2) div SizeOf(PointType), Triangle2);
          DrawPoly(SizeOf(Triangle3) div SizeOf(PointType), Triangle3);
          DrawPoly(SizeOf(Triangle4) div SizeOf(PointType), Triangle4);
              setcolor(white);
             dialogue:='QUESTION SUIVANTE';
              if j=15 then begin setcolor(black);
             outTextXY(240,220,dialogue); end;
              outTextXY(240,220,dialogue);
                 delay(3000); setcolor(black);
         outTextXY(240,220,dialogue); setcolor(white);

             i:=i+1;
              question:=Questions[i].Q; outTextXY(110,297,question);
              delay(2000); reponseA:=Questions[i].R1;
           outTextXY(60,368,reponseA);  delay(1500);  reponseC:=Questions[i].R2;
           outTextXY(450,368,reponseC); delay(1500);
             reponseB:=Questions[i].R3; outTextXY(60,418,reponseB);
               delay(1500); reponseD:=Questions[i].R4;
           outTextXY(450,418,reponseD); delay(1500);
                p:=p-15;
                end; end;


           procedure Menu;
        begin
            SetTextStyle(DefaultFont, HorizDir,3);
            setcolor(11);
     outTextXY(208,115,'M');delay(30); outTextXY(237,115,'I');delay(40);
     outTextXY(261,115,'L');delay(50); outTextXY(283,115,'L');delay(60);
     outTextXY(305,115,'I');delay(70); outTextXY(327,115,'O');delay(80);
     outTextXY(350,115,'N');delay(90); outTextXY(371,115,'S');delay(100);
     SetTextStyle(DefaultFont, HorizDir,1);
           setcolor(15);
      outTextXY(190, 215,menuder[1]);
      outTextXY(190,255,menuder[2]);

      outTextXY(160,320,'Appuyez la touche " J " pour jouer');
      outTextXY(160,340,'Appuyez sur " Entree " pour quitter');
       SetTextStyle(DefaultFont, HorizDir,1);
        setLineStyle(solidln,0,normwidth);



         valider:=readkey;

          case valider of
          'j','J':
         begin
           setcolor(11);
     line(0, 300, 15 , 300);
     line(15, 300, 35 , 270);
     line(35, 270, GetMaxX-35, 270);
     line(GetMaxX-35, 270, GetMaxX-15 , 300);
     line(getMaxX-15, 300, GetMaxX, 300);
     line(15, 300, 35 , 330);
     line(35, 330, GetMaxX-35 , 330);
     line(GetMaxX-35, 330,GetMaxX-15 , 300);
     line(15, 300, 35 , 330);
     line(0, 370, 15 , 370);
     line(0, 420, 15 , 420);
     line(GetMAxX, 370, 617, 370);
     line(GetMAxX, 420, 617, 420);
     line(270,370, 397, 370);
     line(270,420, 397,420);
     moveTo(35,350);lineTo(15,370);lineTo(35,390);lineTo(250,390);lineTo(270,370);lineTo(250,350);lineTo(35, 350);
     moveTo(35,400);lineTo(15,420);lineTo(35,440);lineTo(250,440);lineTo(270,420);lineTo(250,400);lineTo(35,400);
     moveTo(417,350);lineTo(397,370);lineTo(417,390);lineTo(597,390);lineTo(617,370);lineTo(597,350);lineTo(417,350);
     moveTo(417,400);lineTo(397,420);lineTo(417,440);lineTo(597,440);lineTo(617,420);LineTo(597,400);lineTo(417,400);
     SetFillStyle(solidln,0);
    DrawPoly(SizeOf(Triangle1) div SizeOf(PointType), Triangle1);
    DrawPoly(SizeOf(Triangle2) div SizeOf(PointType), Triangle2);
    DrawPoly(SizeOf(Triangle3) div SizeOf(PointType), Triangle3);
    DrawPoly(SizeOf(Triangle4) div SizeOf(PointType), Triangle4);
     SetTextStyle(DefaultFont, HorizDir,1);
     outTextXY(40,368,'A:');
     outTextXY(40,418,'C:');
     outTextXY(GetMaxX-210,368,'B:');
     outTextXY(GetMaxX-210,418,'D:');
        setcolor(15);
     outTextXY(512,250,'1- 200 $');
     outTextXY(512,235,'2- 400 $');
    outTextXY(512,220,'3- 600 $');
    outTextXY(512,205,'4- 800 $');
         setcolor(11);
    outTextXY(512,190,'5- 1.000 $');
          setcolor(15);
      outTextXY(512,175,'6- 2.000');
     outTextXY(512,160,'7- 4.000 $');
    outTextXY(512,145,'8- 8.000 $');
    outTextXY(512,130,'9- 16.000 $');
         setcolor(11);
    outTextXY(512,115,'10- 32.000 $');
          setcolor(15);
      outTextXY(512,100,'11- 64.000 $');
     outTextXY(512,85,'12- 125.000 $');
    outTextXY(512,70,'13- 250.000 $');
    outTextXY(512,55,'14- 500.000 $');
      setcolor(11);
    outTextXY(512,40,'15- 1.000.000 $');
       moveTo(505,35); lineTo(505,260);lineTo(GetmaxX-5,260);lineTo(GetmaxX-5,35);lineTo(505,35);


       setcolor(0); outTextXY(415,340,'ЫЫЫЫЫ');

            setcolor(black);
       outTextXY(190,215,'1- JOUER');
       outTextXY(190,255,'2- QUITTER LE JEU');
        outTextXY(160,320,'Appuyez la touche " J " pour jouer');
         outTextXY(160,340,'Appuyez sur " Entree " pour quiter');
            {JOKER 50:50}
                setcolor(13);
      SetFillStyle(solidln,5);
      Circle(60, 60, 45);
      SetTextStyle(DefaultFont,Horizdir,2);
      setcolor(11);
      outTextXY(20,60,'50:50');
       SetTextStyle(DefaultFont,Horizdir,1);
        outTextXY(20,110,'  Entrez r');

         setcolor(white);
          dialogue:='BONJOUR ET BIENVENUE A "QUI VEUT GAGNER DES MILLIONS"';
         outTextXY(80,220,dialogue);
          delay(2000);
           setcolor(black);
         outTextXY(80,220,dialogue);
           setcolor(white);
          dialogue:='PREMIERE QUESTION';
           outTextXY(240,220,dialogue);
          delay(3000);
            setcolor(black);
           outTextXY(240,220,dialogue);
            setcolor(white);
        Jeu;
        end
        else
         exit
       end;

  end;




procedure intro;
var gs,gs1,gs2:string[100]; i:integer;
procedure paslet(gs:string;r,r1:byte);
var gi,gj:integer;
begin
for gi:=1 to length(gs) do
begin
gj:=length(gs)+1;
repeat
gotoxy(r+7+gj,5+r1);
clreol;
gotoxy(r+6+gj,5+r1); write(gs[gi]);
delay(5);
gj:=gj-1;
until gj=gi;
end;
end;
begin
gs:='  SIMULATION DU JEU " QUI VEUT GAGNER DES MILLIONS "';
gs1:='TP PROGRAMMATION IG1A';
gs2:='THEME';
paslet(gs1,8,4);
for i:=1 to 22 do
 begin
  gotoxy(15+i,10); write(#205);
  delay(100);
  end;
 paslet(gs2,11,11);
  delay(1000);

  for i:=1 to 60 do
 begin
   textcolor(11);
  gotoxy(13+i,17); write(#205);
  delay(100);
  end;
   for i:=73 downto 15 do
 begin
   textcolor(13);
  gotoxy(i-1,19); write(#205);
  delay(100);
  end;
   gotoxy(73,19); write(#188);
  gotoxy(13,19); write(#200);
  textcolor(11);
  gotoxy(73,17); write(#187);
   gotoxy(13,17); write(#201);
    textcolor(15);
paslet(gs,8,13);
    delay(1000);
    for i:=1 to random(6)+4 do
     begin
 textcolor(11); gotoxy(32,21); write('L'); delay(300); textcolor(15);gotoxy(32,21); write('L');
  textcolor(11);gotoxy(33,21); write('o'); delay(300); textcolor(15);gotoxy(33,21); write('o');
  textcolor(11);gotoxy(34,21); write('a'); delay(300); textcolor(15);gotoxy(34,21); write('a');
  textcolor(11);gotoxy(35,21); write('d'); delay(300); textcolor(15);gotoxy(35,21); write('d');
  textcolor(11);gotoxy(36,21); write('i'); delay(300); textcolor(15);gotoxy(36,21); write('i');
  textcolor(11);gotoxy(37,21); write('n'); delay(300); textcolor(15);gotoxy(37,21); write('n');
  textcolor(11);gotoxy(38,21); write('g'); delay(300); textcolor(15);gotoxy(38,21); write('g');
  textcolor(11);gotoxy(39,21); write('.'); delay(300); textcolor(15);gotoxy(39,21); write('.');
  textcolor(11);gotoxy(40,21); write('.'); delay(300); textcolor(15);gotoxy(40,21); write('.');
  textcolor(11);gotoxy(41,21); write('.'); delay(300); textcolor(15);gotoxy(41,21); write('.');
   end;

end;


BEGIN
    clrscr;
    curseur(false);
   intro;
   Gd := Detect;
InitGraph(Gd, Gm, 'C:\TPWDB\BGI');{Directory to change}
if GraphResult <> grOk then
begin
  Halt(1);
end;
   affichage;
           rep:='N';
           while rep='N' do begin
            Menu;
            clearviewport;
             SetTextStyle(DefaultFont, HorizDir,1);
            outTextXY(220,228,'VOULEZ-VOUS QUITTER ?(O/N).  .');
            gotoxy(56,15); readln(rep);  delay(1000);
            if rep='N' then begin
             clearviewport;
             affichage; end
             else  begin
              exit;
               end;
                 end;

     CloseGraph;
    readln;
END.