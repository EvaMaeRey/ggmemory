savehistory("docs/temp_history.R") # nicely saves history...

formatR code input seems to require error free code (i.e. balanced parenthases etc)

confirmed!

Yihui Xie
@xieyihui
Replying to
@EvaMaeRey

> Sorry, I'm afraid that's not possible. formatR::tidy_source() relies on parse(), which means the code has to be syntactically valid. RStudio IDE uses a different method to reformat code, which I believe is not through R (otherwise it would be possible to port to an R package).
11:47 AM · Sep 29, 2021·Twitter Web App


Yihui Xie
@xieyihui
·
Sep 29
Replying to 
@xieyihui
 and 
@EvaMaeRey
@chrisderv

> Do you know what technology RStudio IDE uses to reformat R code? (It might be a feature of the Ace editor, or a certain syntax analyzer/linter in a certain language such as Java or JavaScript)

Christophe Dervieux
@chrisderv
·
Sep 29

> I don't really know exactly how this is done in the IDE. From the source code, I think this is a syntax analyser in Java. 
I don't know what you want to do exactly but in the IDE you can select text then rstudioapi::executeCommand("reformatCode")? Same as pressing CMD + SHIFT + A

Mickaël CANOUIL
@mickaelcanouil
·
Sep 29

> I would be really cautious about something that “guess” what is wrong or right in a code to reformat it, i.e., if there is an opened parenthesis alone, is it one too much or is it the lack of the closing one?
I’d rather use a linter and solve the issue myself Smiling face with open mouth and cold sweat

I wrote savehistory_last_n() which takes history and saves only at last n lines.

