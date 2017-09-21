script "Levure Sample Window Card Behavior"
command uiClickedButton
   answer "This button calls a handler that is defined in the card behavior script." & cr & cr & \
         _q("The behavior is a script only stack file stored in the `behaviors` folder that sits alongside this stack file.") & cr & cr & \
         _q("The script only stack file is assigned to the `stackFiles` property of this stack.")
end uiClickedButton

on openCard
   local tuFolder
   put levureApplicationDataFolder("user") into tuFolder
   answer "Sample Window openCard, levureApplicationDataFolder user:" && tuFolder
end openCard

function _q pStr
   replace "`" with quote in pStr
   return pStr
end _q
