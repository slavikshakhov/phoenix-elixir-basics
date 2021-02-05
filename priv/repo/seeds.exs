alias Proj.Repo
alias Proj.Offices.Office
alias Proj.Boats.Boat
alias Proj.Posts.Post
alias Proj.Stores.Store

%Office{
    code: "ABC",
    city: "Toronto",
    status: false,
    price: "$"
}
|> Repo.insert!() 

%Office{
    code: "ABD",
    city: "Valencia",
    status: false,
    price: "$$"
}
|> Repo.insert!() 


%Office{
    code: "ABL",
    city: "Berlin",
    status: false,
    price: "$$"
}
|> Repo.insert!() 
%Office{
    code: "ADF",
    city: "Hamburg",
    status: false,
    price: "$"
}
|> Repo.insert!() 
%Office{
    code: "BCD",
    city: "Moscow",
    status: false,
    price: "$$"
}
|> Repo.insert!() 

%Office{
    code: "BCF",
    city: "Kiev",
    status: false,
    price: "$$$"
}
|> Repo.insert!() 


%Office{
    code: "BFF",
    city: "Kremenchug",
    status: false,
    price: "$$$"
}
|> Repo.insert!() 
%Office{
    code: "BCG",
    city: "Berdjansk",
    status: false,
    price: "$$$"
}
|> Repo.insert!() 

%Office{
    code: "ABC",
    city: "Toronto",
    status: false,
    price: "$"
}
|> Repo.insert!() 

%Office{
    code: "ABD",
    city: "Valencia",
    status: false,
    price: "$$"
}
|> Repo.insert!() 


%Office{
    code: "ABL",
    city: "Berlin",
    status: false,
    price: "$$"
}
|> Repo.insert!() 
%Office{
    code: "ADF",
    city: "Hamburg",
    status: false,
    price: "$"
}
|> Repo.insert!() 
%Office{
    code: "BCD",
    city: "Moscow",
    status: false,
    price: "$$"
}
|> Repo.insert!() 

%Office{
    code: "BCF",
    city: "Kiev",
    status: false,
    price: "$$$"
}
|> Repo.insert!() 


%Office{
    code: "BFF",
    city: "Kremenchug",
    status: false,
    price: "$$$"
}
|> Repo.insert!() 
%Office{
    code: "BCG",
    city: "Berdjansk",
    status: false,
    price: "$$$"
}
|> Repo.insert!() 

#Boats 
%Boat{
    type: "fishing",
    price: "$",
    available: true
}
|> Repo.insert!() 

%Boat{
    type: "sport",
    price: "$$",
    available: true
}
|> Repo.insert!() 


%Boat{
    type: "fishing",
    price: "$$$",
    available: false
}
|> Repo.insert!() 
%Boat{
    type: "sailing",
    price: "$",
    available: true
}
|> Repo.insert!() 
%Boat{
    type: "sailing",
    price: "$$",
    available: false
}
|> Repo.insert!() 

#Posts
%Post{
    title: "Cooking",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    active: true
}
|> Repo.insert!() 

%Post{
    title: "Reading",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    active: false
}
|> Repo.insert!() 


%Post{
    title: "Programming",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    active: true
}
|> Repo.insert!() 
%Post{
    title: "Travelling",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    active: true
}
|> Repo.insert!() 
%Post{
    title: "Movies",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    active: false
}
|> Repo.insert!() 

#Stores


%Store{
    name: "Cooking",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's ",
    open: true,
    rating: 1
}
|> Repo.insert!() 

%Store{
    name: "Reading",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    open: false,
    rating: 2
}
|> Repo.insert!() 


%Store{
    name: "Programming",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    open: true,
    rating: 3
}
|> Repo.insert!() 
%Store{
    name: "Travelling",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    open: true,
    rating: 4
}
|> Repo.insert!() 
%Store{
    name: "Movies",
    description: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ",
    open: false,
    rating: 5
}
|> Repo.insert!() 




