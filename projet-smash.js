let question=["Qui est le cr\xe9ateur du jeu ?","En quelle ann\xe9e a \xe9t\xe9 cr\xe9\xe9 le premier Smash Bros ?","Lequel de ses personnages est dans le premier Super Smash Bros (Super Smash Bros 64) ?","Lequel de ces personnages n'appara\xeet pas dans le jeu, tous opus confondus ?","Combien y a-t-il de personnages sur le dernier opus ?","\xc0 quel endroit se d\xe9roule le plus grand tournoi Super Smash Bros ?","Quel est le personnage qui ressemble \xe0 un gros singe ?","Quel est le seul Pok\xe9mon l\xe9gendaire dans le jeu ?","Quel est le personnage qui ressemble \xe0 un crocodile ?","Quels sont les deux personnages qui, dans les jeux pr\xe9c\xe9dents, \xe9taient le m\xeame personnage ?","Quel personnage ci-dessous vient d'un jeu de course ?","\xc0 quel personnage utilise le c\xe9l\xe8bre 'PK Fire' ?"],reponse=[[["Marc Merrill",!1],["Masahiro Sakurai",!0],["Shigeru Miyamoto",!1],["Yu Suzuki",!1]],[["1999",!0],["2008",!1],["2001",!1],["1996",!1]],[["Sonic",!1],["Bowser",!1],["Zelda",!1],["Pikachu",!0]],[["Snake",!1],["Marth",!1],["Waluigi",!0],["Cloud",!1]],[["82",!0],["61",!1],["53",!1],["56",!1]],[["L'EVO",!0],["Le Pound",!1],["Genesis",!1],["Smash Summit",!1]],[["Luigi",!1],["Donkey Kong",!0],["Roi Dadidou",!1],["Peach",!1]],[["Pikachu",!1],["Kyurem",!1],["Mewtwo",!0],["Amphinobi",!1]],[["Falco",!1],["Corin",!1],["King K. Rool",!0],["Ganondorf",!1]],[["Peach et Daisy",!1],["Link et Link Enfant",!1],["Mario et Luigi",!1],["Zelda et Sheik",!0]],[["Captain Falcon",!0],["Mario",!1],["Samus",!1],["Chrom",!1]],[["Lucas",!1],["Bowser",!1],["Ness",!0],["Felinferno",!1]]],explication=["Le cr\xe9ateur de Super Smash Bros est Masahiro Sakurai.","Le premier jeu Super Smash Bros a \xe9t\xe9 cr\xe9\xe9 en 1999.","Le personnage pr\xe9sent dans le premier opus est Pikachu.","Waluigi, contrairement \xe0 son confr\xe8re Wario, n'est pas jouable.","Il y a 82 personnages jouables avec les DLC.","L'EVO est le plus grand tournoi de jeux de combat et est aussi le tournoi regroupant le plus de joueurs de Super Smash Bros.","Le personnage embl\xe9matique Donkey Kong est un gorille.","Le seul Pok\xe9mon l\xe9gendaire jouable est Mewtwo.","Le personnage ressemblant \xe0 un crocodile est King K. Rool, il est aussi le m\xe9chant dans les jeux Donkey Kong.","C'est seulement depuis le pr\xe9c\xe9dent opus que Zelda et Sheik sont deux personnages distincts.","C'est du jeu peu connu F-Zero que vient Captain Falcon.","L'attaque PK Fire qui a fait rager de nombreuses personnes en ligne est une attaque de Ness."],indexQ=0,score=0,nbrquestions=12,ok="ok";function ChangeQuestion(){document.getElementById("quizz").innerHTML=`
    <div id="mainbox">
        <div id="question">
            <img src="images/question.jpg" alt="question">
            <p id="pquestion">${question[indexQ]}</p>
        </div>
        <div id="reponses"></div>
        <button id="next" onclick="expli()">V\xe9rification</button>
    </div>
    `,document.getElementById("question");let e=document.getElementById("reponses");e.innerHTML="",reponse[indexQ].forEach(function(n,i){let s=document.createElement("p");s.textContent=`${n[0]}`,s.setAttribute("data-index",i),s.addEventListener("click",clic),e.appendChild(s)})}function expli(){indexQ<11?document.getElementById("quizz").innerHTML=`
        <div id="mainbox">
            <div id="question">
                <p id="question">${explication[indexQ]}</p>
            </div>
            <button id="next" onclick="ChangeQuestion()">Question suivante</button>
        </div>
    `:document.getElementById("quizz").innerHTML=`
        <div id="mainbox">
            <div id="question">
                <p id="question">${explication[indexQ]}</p>
            </div>
            <button id="next" onclick="viewscore()">Score</button>
        </div>
    `,indexQ+=1}function viewscore(){document.getElementById("quizz").innerHTML=`
    <p id="start">Vous avez obtenu ${score} bonnes r\xe9ponses.</p>
    `}function clic(e){!0==reponse[e.target.getAttribute("data-index")][indexQ][1]&&(score+=1),console.log(score)}