% Author:   L.Mohalland, D.Smith, M.McMre, Rosue
% Date: 3/22/2015



%gender (male, female)
%eye color (amber, black, blue, brown, gray, green, hazel, violet)
%skin color  (dark, light)
%hair color  (black, brown, red, blonde, )
%height   (ft and inches)
%height(F,Inches)
%weight (pounds)
%special features( tattoo/scars)

%hair style(afro, afro textured, etc...)
hair_style(afro, 'Big hair hairstyle, featured heavily in Afro-American culture, popular through the 1970s in the United States of America').
hair_style(afro-textured, 'A typical texture of Black African hair that has not been altered by hot combs, flat irons, or chemicals (by perming, relaxing, or straightening). Each strand of this hair type grows in a tiny spring-like, corkscrew shape. The overall effect is such that, despite relatively fewer actual hair shafts compared to straight hair,[1] this texture appears (and feels) denser than its straight counterparts. Due to this, it is often referred to as thick, bushy, or woolly.').
hair_style(beehiv, 'A hairstyle in which the hair is raised at the top of the head by padding or teasing so that the size and shape is suggestive of a beehive, hence the name').
hair_style(big-hair,'Any hairstyle with large volume').
%hair_style(braid,'A braid or braids, also known as a plait or plaits or a tress or tresses, is a type of hairstyle usually worn by women with long hair in which all or part of one's hair is separated into strands, normally three, and then plaited or braided together, typically forming one braid hanging down at the back of the head or two braids hanging down on either side of the head').
%hair_style(bun, 'A women's hairstyle where the hair is pulled into a knot at the back or top of the head. it can also consist of a bun at the side of the head or two buns on either side of the head').
%hair_style(butch-cut, 'A butch is a type of haircut in which the hair on the top of the head is cut short in every dimension. The top and the upper portion of the back and sides are cut the same length, which ranges between one quarter of an inch and three quarters of an inch, following the contour of the head').
hair_style(buzz-cut, 'A buzz cut is any of a variety of short hairstyles usually designed with electric clippers').
hair_style(caesar-cut,'The Caesar cut is a mens hairstyle which is short and horizontally straight').
hair_style(comb-over, 'Hair that is combed from one part of the head to another often to cover up a bald spot. Donald Trump is described as having a double combover, in two directions').
hair_style(cornrow, 'A hairstyle originating from Subsaharan Africa, popularised by African Americans wherein the hair is braided into a series of French-braid-like locks that cling to the head and travel the neck').
hair_style(dreadlocks, 'The hair is "dreadlocked" into individual sections using one of several methods, usually either backcombing, braiding, hand rolling, or allowing hair to naturally "lock" on its own').
hair_style(hi-top-fade, 'The hair is cut short on the sides and is grown long on the top, This style was popular among African-American youth and men in the late 1980s and early 1990s').
hair_style(long-hair,'Hair that is grown long and flowing freely').
hair_style(line-up,'Hair that has an even line across the forehead and then turns sharply at a 90 degree angle and blends with the sideburns, It can be worn with almost any other hairstyle').
hair_style(mohawk, 'Hair that is shaved or buzzed on the sides leaving a strip of hair in the middle. It is often spiked up').
hair_style(pony-tail, 'Hair that is pulled to the back of the head and often held with a hair tie or ribbon').
hair_style(quiff, 'The quiff combines the 1950s pompadour hairstyle, the 1950s flat-top, and, sometimes a mohawk').
hair_style(wave,'Short Hair Waves, shortened to just waves, is a very common and sought after hairstyle for African American men that create the appearance of water like waves of the hair').


%populate suspects/known offenders
%human(name, gender, eye colour, hair colour, special features, hair style, skin colur, height, weight)
suspect(fname(nestor), lname(schnabel), gender(male), eye_colour(blue), hair_colour(brown), special_features(['dragon tattoo shoulder', 'scar right eye']), hair_style(wave), skin_colour(dark), height([5,9])).
suspect(fname(freeman), lname(haverty), gender(male), eye_colour(brown), hair_colour(black), special_features('dragon tattoo chest'), hair_style(mohawk), skin_colour(light), height([5,11])).

%assumption- User will always know the following about suspects <hair color, skin color and gender>
system_run:-
            nl, write('enter suspects hair color <black, brown, red, blonde>: '), read(Hairc),
            nl, write('enter suspects skin color <light or dark>: '), read(Skin_color),
            nl, write('enter suspects gender <male or female>: '), read(Gender),
            suspect_match(Hairc,Skin_color,Gender),
            write('clear screen and continue (y/n) ').

suspect_match(Hairc,Skin_color,Gender):-
            write('suspect matching filter options'),nl,
            %suspect(F,L,Gender,Eye,Hairc,Sf,Hs,Skin_color,H),nl,nl.
            suspect(F,L,gender(Gender),Eye,hair_colour(Hairc),Sf,Hs,skin_colour(Skin_color),H).

suspect_listing_all:-
        write('########################################'),nl,
        suspect(F,L,Gender,Eye,Hairc,Sf,Hs,Skin_color,_),
        write('########################################'),nl.

%offence(code, title)
offence(aNaRa, title('Aiding & Abetting / Accessory')).
offence(aRb, title('Assault / Battery')).
offence(drug-possession, title('Drug Possession')).
offence(burglary, title('Burglary')).
offence(aRL, title('Theft / Larceny')).


%All Other Charges
offence(child-abuse, title('Child Abuse')).
offence(computer-crime, title('Computer Crime')).
offence(domestic-violence, title('Domestic Violence')).
offence(disorderly-conduct, title('Disorderly Conduct')).
offence(extortion, title('Extortion')).
offence(embezzlement, title('Embezzlement')).
offence(forgery, title('Forgery')).
offence(fraud, title('Fraud')).
offence(harassment, title('Harassment')).
offence(homicide, title('Homicide')).
offence(indecent-exposure, title('Indecent Exposure')).
offence(identity-theft, title('Identity Theft')).
offence(kidnapping, title('Kidnapping')).
offence(manslaughter-involuntary, title('Manslaughter: Involuntary')).
offence(manslaughter-voluntary, title('Manslaughter: Voluntary')).
offence(prostitution, title('Prostitution')).
offence(public-intoxication, title('Public Intoxication')).
offence(rape, title('Rape')).
offence(robbery, title('Robbery')).
offence(sexual-assault, title('Sexual Assault')).
offence(shoplifting, title('Shoplifting')).

%getting additional details about the suspect
suspect_eye_color:-
                   %list all recognize eye colours noted in system
                    write('eye colors: amber, black, blue, brown, gray, hazel, and violet'),
                    nl,write('what is the suspects eye color: '),read(Eye_color).

suspect_hair_color:-
                    write('hair colors: black, brown, red, and blonde'),
                    nl,write('what is the suspects hair color: '), read(Hair_color).
                    
suspect_skin_color:-
                    write('skin complexion: dark and light'),
                    nl,write('what is he suspeccts skin tone: '),read(Skin_color).

suspect_first_name:-
                    nl,write('what is the suspects first name: '),read(Firstname).
suspect_last_name:-
                   nl,write('what is the suspects last name: '),read(Lastname).
suspect_gender:-
                   nl,write('what is the suspects gender: '),read(Gender).

