document.addEventListener("DOMContentLoaded", function() {
    const submitButton = document.getElementById("submit-button");
    const quizForm = document.getElementById("quiz-form");
    const resultText = document.getElementById("result");

    // Définissez les réponses correctes pour chaque question
    const correctAnswers = {
        question1: "Sakurai",
        question2: "1999",
        question3: "Link",
        question4: "Félinferno",
        question5: "74",
        question6: "Mewtwo",
        question7: "King K Rool",
        question8: "34%",
        question9: "6",
        question10: "Nintendo Switch",
        // Ajoutez les réponses correctes pour les autres questions ici
    };

    submitButton.addEventListener("click", function() {
        let score = 0;

        for (const question of quizForm.elements) {
            if (question.type === "radio" && question.checked) {
                const questionName = question.name;
                const userAnswer = question.value;

                if (correctAnswers[questionName] === userAnswer) {
                    score++;
                }
            }
        }

        resultText.textContent = `Vous avez obtenu ${score} sur ${Object.keys(correctAnswers).length} points.`;
    });
});
