function has_portuguese(){
    var languages = window.navigator.languages;
    var has_pt = false;
    var pattern_pt = new RegExp("pt");
    for(current=0; current < languages.length; current++ ){
        if(pattern_pt.test(languages[current])){
           has_pt = true;
        }
    }
    return has_pt;
}

function update_language_path(desired_path){
    if (window.location.pathname != desired_path)
        window.location.pathname = desired_path
}

function choose_language(){
    if(has_portuguese()){
        update_language_path("/")
    }else{
        update_language_path("/en/")
    }
}

//choose_language();