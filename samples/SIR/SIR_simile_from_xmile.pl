source(program='AME',version= 10.5,edition=evaluation,date='Fri Nov 20 14:02:54 GMT 2015').
roots([node1,node10,node11,node12,node2,node3,node4,node5,node6,node7,node8,node9]).
properties([complete-true,fill_colour-white,name-'Desktop2']).
node(node1,compartment,[],[complete=true,name=infectious],[centre=[212,134],caption_offset=[0,0]]).
node(node2,function,[],[complete=true,name=node2,units=1,spec='5',value=5],[]).
node(node3,compartment,[],[complete=true,name=recovered],[centre=[321,135],caption_offset=[0,0]]).
node(node4,function,[],[complete=true,name=node4,units=1,spec='0',value=0],[]).
node(node5,compartment,[],[complete=true,name=susceptible],[centre=[102,135],caption_offset=[0,0]]).
node(node6,function,[],[complete=true,name=node6,units=1,spec=total_population,value=total_population],[]).
node(node7,variable,[],[complete=true,name=contact_infectivity],[centre=[98,55],caption_offset=[0,0]]).
node(node8,function,[],[complete=true,name=node8,units=1,spec='0.3',value=0.3],[]).
node(node9,variable,[],[complete=true,name=duration],[centre=[299,57],caption_offset=[0,0]]).
node(node10,function,[],[complete=true,name=node10,units=1,spec='5',value=5],[]).
node(node11,variable,[],[complete=true,name=total_population],[centre=[192,55],caption_offset=[0,0]]).
node(node12,function,[],[complete=true,name=node12,units=1,spec='1000',value=1000],[]).
node(node13,function,[],[complete=true,name=node13,units=1,spec='infectious/duration',value=infectious/duration],[along=550]).
node(node14,function,[],[complete=true,name=node14,units=1,spec='susceptible*infectious/total_population*contact_infectivity',value=susceptible*infectious/total_population*contact_infectivity],[along=550]).
arc(arc1,node2,node1,influence,[name=arc1,attached=[]],[]).
arc(arc2,node4,node3,influence,[name=arc2,attached=[]],[]).
arc(arc3,node6,node5,influence,[name=arc3,attached=[]],[]).
arc(arc4,node8,node7,influence,[name=arc4,attached=[]],[]).
arc(arc5,node10,node9,influence,[name=arc5,attached=[]],[]).
arc(arc6,node12,node11,influence,[name=arc6,attached=[]],[]).
arc(arc7,node1,node3,flow,[attached=[node13],complete=true,name=recovering],[caption_offset=[0,0],curve=[555,1000]]).
arc(arc8,node5,node1,flow,[attached=[node14],complete=true,name=succumbing],[caption_offset=[0,0],curve=[555,1000]]).
arc(arc9,node7,node14,influence,[attached=[],name=arc9,complete=true,role=[use(none,in_hierarchy,contact_infectivity,1)]],[curve=[9,1]]).
arc(arc10,node9,node13,influence,[attached=[],name=arc10,complete=true,role=[use(none,in_hierarchy,duration,1)]],[curve=[9,1]]).
arc(arc11,node1,node13,influence,[attached=[],name=arc11,complete=true,role=[use(none,in_hierarchy,infectious,1)]],[curve=[9,1]]).
arc(arc12,node1,node14,influence,[attached=[],name=arc12,complete=true,role=[use(none,in_hierarchy,infectious,1)]],[curve=[9,1]]).
arc(arc13,node5,node14,influence,[attached=[],name=arc13,complete=true,role=[use(none,in_hierarchy,susceptible,1)]],[curve=[9,1]]).
arc(arc14,node11,node14,influence,[attached=[],name=arc14,complete=true,role=[use(none,in_hierarchy,total_population,1)]],[curve=[9,1]]).
arc(arc15,node11,node6,influence,[attached=[],name=arc15,complete=true,role=[use(none,in_hierarchy,total_population,1)]],[curve=[9,1]]).
