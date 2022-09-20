console.log("Welcome to Yash News");
let btn1 = document.getElementById("btn-1");
// let btn2 = document.getElementById("btn-2");
// let btn3 = document.getElementById("btn-3");
// let btn4 = document.getElementById("btn-4");

let newsSource = ["abc-news","bbc-news","the-washington-post","cnn"];


// 040f3caaed7f4695b6c8799b99ff69dc 

//function one on clicking the first button
btn1.addEventListener('click',news1);
let i = 0;
function news1(){


    let source = newsSource[i];
    let apiKey = "040f3caaed7f4695b6c8799b99ff69dc";
    let newsAccordion = document.getElementById("newsAccordion");

    let xhr = new XMLHttpRequest();
    xhr.open('get', `https://newsapi.org/v2/everything?sources=${source}&apiKey=${apiKey}`, true);

    xhr.onload = function () {
        if (this.status == 200) {
            let json = JSON.parse(this.responseText);
            let articles = json.articles;
            let newsHTML = "";
            // for (news in articles) {
                // console.log(articles[news]);
                // console.log(news);
                // console.log(articles['title'])
                articles.forEach(function(element,index){
                    console.log(element);
                document.getElementById("headingNews").innerHTML = `<h1>News from <b>${newsSource[i].toUpperCase()}</b></h1> <hr>`
                let newss = `<div class="accordion" id="newsAccordion">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="heading${index}">
                                        <button class="accordion-button " type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapse${index}" aria-expanded="true" aria-controls="collapse${index}">
                                            <b>Breaking News ${index+1} :</b> ${element["title"]}
                                        </button>
                                    </h2>
                                    <div id="collapse${index}" class="accordion-collapse collapse " aria-labelledby="heading${index}"
                                        data-bs-parent="#newsAccordion">
                                        <div class="accordion-body">
                                            <b>Content: </b>${element["content"]}. <a href="${element.url}" target="_blank"> Read More </a><br>
                                            <image class = "imageHandleSize"src='${element.urlToImage}' ><br>
                                            <b>Published At:</b> ${element.publishedAt}<br>
                                        </div>
                                    </div>
                                </div>
                            </div>`;
                newsHTML += newss;
            })
            // }
            newsAccordion.innerHTML = newsHTML;
            if(i==3){
                i = 0
            }
            else{
                i += 1
            }
        }
        else {
            console.log("some error occured");
        }
    }

    xhr.send();
}


// btn2.addEventListener('click',news2);
// function news2(){
//     let source = "bbc-news";
//     let apiKey = "040f3caaed7f4695b6c8799b99ff69dc";
//     let newsAccordion = document.getElementById("newsAccordion");

//     let xhr = new XMLHttpRequest();
//     xhr.open('get', `https://newsapi.org/v2/everything?sources=${source}&apiKey=${apiKey}`, true);

//     xhr.onload = function () {
//         if (this.status == 200) {
//             let json = JSON.parse(this.responseText);
//             let articles = json.articles;
//             let newsHTML = "";
//             // for (news in articles) {
//                 // console.log(articles[news]);
//                 // console.log(news);
//                 // console.log(articles['title'])
//                 articles.forEach(function(element,index){
//                     console.log(element);
//                 let newss = `<div class="accordion" id="newsAccordion">
//                                 <div class="accordion-item">
//                                     <h2 class="accordion-header" id="heading${index}">
//                                         <button class="accordion-button " type="button" data-bs-toggle="collapse"
//                                             data-bs-target="#collapse${index}" aria-expanded="true" aria-controls="collapse${index}">
//                                             <b>Breaking News ${index+1} :</b> ${element["title"]}
//                                         </button>
//                                     </h2>
//                                     <div id="collapse${index}" class="accordion-collapse collapse " aria-labelledby="heading${index}"
//                                         data-bs-parent="#newsAccordion">
//                                         <div class="accordion-body">
//                                             <b>Content: </b>${element["content"]}. <a href="${element.url}" target="_blank"> Read More </a><br>
//                                             <image class = "imageHandleSize"src='${element.urlToImage}' ><br>
//                                             <b>Published At:</b> ${element.publishedAt}<br>
//                                         </div>
//                                     </div>
//                                 </div>
//                             </div>`;
//                 newsHTML += newss;
//             })
//             // }
//             newsAccordion.innerHTML = newsHTML;
//         }
//         else {
//             console.log("some error occured");
//         }
//     }

//     xhr.send();
// }



// btn3.addEventListener('click',news3);
// function news3(){
//     let source = "the-washington-post";
//     let apiKey = "040f3caaed7f4695b6c8799b99ff69dc";
//     let newsAccordion = document.getElementById("newsAccordion");

//     let xhr = new XMLHttpRequest();
//     xhr.open('get', `https://newsapi.org/v2/everything?sources=${source}&apiKey=${apiKey}`, true);

//     xhr.onload = function () {
//         if (this.status == 200) {
//             let json = JSON.parse(this.responseText);
//             let articles = json.articles;
//             let newsHTML = "";
//             // for (news in articles) {
//                 // console.log(articles[news]);
//                 // console.log(news);
//                 // console.log(articles['title'])
//                 articles.forEach(function(element,index){
//                     console.log(element);
//                 let newss = `<div class="accordion" id="newsAccordion">
//                                 <div class="accordion-item">
//                                     <h2 class="accordion-header" id="heading${index}">
//                                         <button class="accordion-button " type="button" data-bs-toggle="collapse"
//                                             data-bs-target="#collapse${index}" aria-expanded="true" aria-controls="collapse${index}">
//                                             <b>Breaking News ${index+1} :</b> ${element["title"]}
//                                         </button>
//                                     </h2>
//                                     <div id="collapse${index}" class="accordion-collapse collapse " aria-labelledby="heading${index}"
//                                         data-bs-parent="#newsAccordion">
//                                         <div class="accordion-body">
//                                             <b>Content: </b>${element["content"]}. <a href="${element.url}" target="_blank"> Read More </a><br>
//                                             <image class = "imageHandleSize"src='${element.urlToImage}' ><br>
//                                             <b>Published At:</b> ${element.publishedAt}<br>
//                                         </div>
//                                     </div>
//                                 </div>
//                             </div>`;
//                 newsHTML += newss;
//             })
//             // }
//             newsAccordion.innerHTML = newsHTML;
//         }
//         else {
//             console.log("some error occured");
//         }
//     }

//     xhr.send();
// }



// btn4.addEventListener('click',news4);
// function news4(){
//     let source = "cnn";
//     let apiKey = "040f3caaed7f4695b6c8799b99ff69dc";
//     let newsAccordion = document.getElementById("newsAccordion");

//     let xhr = new XMLHttpRequest();
//     xhr.open('get', `https://newsapi.org/v2/everything?sources=${source}&apiKey=${apiKey}`, true);

//     xhr.onload = function () {
//         if (this.status == 200) {
//             let json = JSON.parse(this.responseText);
//             let articles = json.articles;
//             let newsHTML = "";
//             // for (news in articles) {
//                 // console.log(articles[news]);
//                 // console.log(news);
//                 // console.log(articles['title'])
//                 articles.forEach(function(element,index){
//                     console.log(element);
//                 let newss = `<div class="accordion" id="newsAccordion">
//                                 <div class="accordion-item">
//                                     <h2 class="accordion-header" id="heading${index}">
//                                         <button class="accordion-button " type="button" data-bs-toggle="collapse"
//                                             data-bs-target="#collapse${index}" aria-expanded="true" aria-controls="collapse${index}">
//                                             <b>Breaking News ${index+1} :</b> ${element["title"]}
//                                         </button>
//                                     </h2>
//                                     <div id="collapse${index}" class="accordion-collapse collapse " aria-labelledby="heading${index}"
//                                         data-bs-parent="#newsAccordion">
//                                         <div class="accordion-body">
//                                             <b>Content: </b>${element["content"]}. <a href="${element.url}" target="_blank"> Read More </a><br>
//                                             <image class = "imageHandleSize"src='${element.urlToImage}' ><br>
//                                             <b>Published At:</b> ${element.publishedAt}<br>
//                                         </div>
//                                     </div>
//                                 </div>
//                             </div>`;
//                 newsHTML += newss;
//             })
//             // }
//             newsAccordion.innerHTML = newsHTML;
//         }
//         else {
//             console.log("some error occured");
//         }
//     }

//     xhr.send();
// }