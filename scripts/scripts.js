let lastCategory = ''; 
function filterFoods(category,button) {
    
    const allFoods = document.querySelectorAll('.foods-item');

    
  
    if (category === lastCategory) {
        allFoods.forEach(function(food) {
            food.classList.remove('hidden');
        });
        lastCategory = ''; 
        removeActiveClassFromButtons();
    } else {
       
        allFoods.forEach(function(food) {
            if (food.classList.contains(category)) {
                
                food.classList.remove('hidden');
            } else {
                
                food.classList.add('hidden');
            }
        });
        lastCategory = category; 

        removeActiveClassFromButtons();
        button.classList.add('active');
    }
}

function removeActiveClassFromButtons() {
    const buttons = document.querySelectorAll('.foods-selection-button');
    buttons.forEach(function(btn) {
        btn.classList.remove('active');
    });
}


const restaurants = {
    "turk": "template/restorant-template.html?id=1",
    "alchemist": "template/restorant-template.html?id=2",
    "asador etxebarri": "template/restorant-template.html?id=3",
    "quique dacosta": "template/restorant-template.html?id=4",
    "reale": "template/restorant-template.html?id=5"
};

const foods = {
    "chicken and shrimp laksa": "template/food-template.html?id=1",
    "creamy mashed potato soup with dashi": "template/food-template.html?id=2",
    "çilekli kuzu incik": "template/food-template.html?id=3",
    "monkfish piccata": "template/food-template.html?id=4",
    "hong kong milk tea tiramisu": "template/food-template.html?id=5"
};

const chefs = {
    "buddha lo": "template/chef-template.html?id=1",
    "shota nakajima": "template/chef-template.html?id=2",
    "mehmet akdağ": "template/chef-template.html?id=3",
    "tiffani faison": "template/chef-template.html?id=4",
    "melissa king ": "template/chef-template.html?id=5"
};


function handleSearch(event) {
    event.preventDefault();
    const searchQuery = document.getElementById('search-input').value.toLowerCase();

 
    if (restaurants[searchQuery]) {
        
        window.location.href = restaurants[searchQuery];
    } else if(foods[searchQuery]) {
        window.location.href = foods[searchQuery];

    }else if (chefs[searchQuery]){

        window.location.href = chefs[searchQuery];
    }   else {
        
        alert('İçerik bulunamadı!');
    }

    

 
    return false; 
}

function navigateToRandomPage(){


    
    const chefUrls = Object.values(chefs);
    const foodUrls = Object.values(foods);
    const restorantUrls = Object.values(restaurants);

    const mergedList = [].concat(chefUrls, foodUrls,restorantUrls );

    const randomIndex = Math.floor(Math.random() * mergedList.length);
    const randomPage = mergedList[randomIndex];
    
    window.location.href = randomPage;

}
document.getElementById('dice-button').addEventListener('click', navigateToRandomPage);