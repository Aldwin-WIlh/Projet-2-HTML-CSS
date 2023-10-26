let question = ["qui est le createur du jeu ?","en quelle année a ete creer le premier smash bros ?","lequel de ses personnage est dans le premier super smash bros (super smash bros 64) ?","lequel de ces personage n'aparait pas dans le jeu tout opus confondu ?","combien y a il de personnage sur le dernier opus ?","a quel endroit se deroule le plus grand tournoi super smash bros ?","quel est le personage qui ressemble a un gros singe ?","quel est le seul pokemon legendaire dans le jeu ?","quel est le personage qui ressemble a un crocodile ?","quel sont les deux personnages, qui dans les jeux precedent etaient le meme personnage ?","quel personnage ci dessous viens d'un jeux de course",'a quel personnage utilise le celebre "pk fire"']
let reponse = [[["Marc Merril",false],["Masahiro Sakurai",true],["Shigeru Miyamoto",false],["Yu Suzuki",false]],
            [["1999",true],["2008",false],["2001",false],["1996",false]],
            [["sonic",false],["bowser",false],["zelda",false],["pikachu",true]],
            [["snake",false],["marth",false],["waluigi",true],["cloud"]],
            [["82",true],["61",false],["53",false],["56",false]],
            [["L'EVO",true],["le Pound",false],["genesis",false,],["smash summit",false]],
            [["luigi",false],["donkey kong",true],["roi dadidou",false],["peach",false]],
            [["pikachu",false],["kyurem",false],["mewtwo",true],["amphinobi",false]],
            [["falco",false],["corin",false],["king k rool",true],["ganondorf",false]],
            [["peach et daisy",false],["link et link enfant",false],["mario et luigi",false],["zelda et sheik",true]],
            [["captain falcon",true],["mario",false],["samus",false],["chrom",false]],
            [["lucas",false],["bowser",false],["ness",true],["felinferno",false]]]
let explication = ["le créateur de super smash bros est Masahiro Sakurai","le premier jeux super smash bros a ete créé en 1999","le personnage present dans le premier opus est Pikachu","waluigi contrairement a son confrère wario n'est pas jouable","il y a 82 personnage jouable avec les dlc","L'EVO est le plus grand tournois de jeux de combat et est aussi le tournoi regroupant le plus de joueur de super smash bros","le personnage iconique donkey kong est un gorille","le seul pokemon legendaire jouable est mewtwo","le personnage ressemblant a un crocodile est king k rool il est aussi le mechant dans les jeux donkey kong","c'est seulement depuis le precedent opus que zelda et sheik sont deux personnage distinct","c'est du jeux peu connue F-zero que viens captain falcon","l'attaque pk fire qui a fait rager de nombreuses personnes sur le online est une attaque de ness"]
let ABCD = ["reponseA","reponseB","reponseC","reponseD"]
let indexQ = 0
let score = 0

function ChangeQuestion() {
    document.getElementById("quiz").innerHTML = `
    <div class="question">
      <img src="images/question.jpg" alt="question en cour">
    </div>
    <div class="reponses">
      <div class="reponseA">
        <img src="images/reponse.jpg" alt="reponseA">
      </div>
      <div class="reponseB">
        <img src="images/reponse.jpg" alt="reponseB">
      </div>
      <div class="reponseC">
        <img src="images/reponse.jpg" alt="reponseC">
      </div>
      <div class="reponseD">
        <img src="images/reponse.jpg" alt="reponseD">
      </div>
    </div>
    `    
    let questionDiv = document.getElementsByClassName("question");
    let reponseDiv = document.getElementsByClassName("");
    document.getElementById("welcome").innerHTML = ""
    questionDiv.textContent = question[indexQ];
    reponseDiv.innerHTML = "";
    reponse[indexQ].forEach(function (item, index) {
        reponseDiv=document.getElementsByClassName(ABCD[index])
        let p = document.createElement("p");
        p.textContent = `${item[0]}`;
        p.setAttribute("data-index",index);
        p.addEventListener("click",clic);
        reponseDiv.appendChild(p);
    });
  indexQ += 1; 
}
