function GuiCalc()

g = figure(1);
text1 = uicontrol('style', 'text', 'position', [120 350 300 30 ], 'string',...
'SIMPLE CALCULATOR','fontsize', 12)

teks2 = uicontrol('style', 'text', 'position', [50 300 200 30 ], 'string',...
'Input Angka 1 = ','fontsize', 12)
edit1 = uicontrol('style', 'edit', 'position', [300 295 200 40 ], 'string',...
'','fontsize', 12)


teks3 = uicontrol('style', 'text', 'position', [50 245 200 30 ], 'string',...
'Input Angka 2 = ','fontsize', 12)
edit2 = uicontrol('style', 'edit', 'position', [300 240 200 40 ], 'string',...
'','fontsize', 12)


edit3 = uicontrol('style', 'edit', 'position', [120 150 300 60 ], 'string',...
'---','fontsize', 12)


push1 = uicontrol(g,'style','pushbutton','position',[50 85 100 50],'string','TAMBAH','callback',{@tambah edit1 edit2 edit3});
push2 = uicontrol(g,'style','pushbutton','position',[230 85 100 50],'string','KURANG','callback',{@kurang edit1 edit2 edit3});
push3 = uicontrol(g,'style','pushbutton','position',[400 85 100 50],'string','CLEAR','callback',{@clear edit1 edit2 edit3});
push4 = uicontrol(g,'style','pushbutton','position',[400 10 100 50],'string','CLOSE','callback',{@close edit1 edit2 edit3});
endfunction

function tambah (hObject, eventdata, edit1,edit2,edit3)
 angka1 = str2num(get(edit1, 'string'));

 angka2 = str2num(get(edit2, 'string'));

 angka3 = angka1+angka2;
 
 set(edit3,'string',num2str(angka3));
endfunction

function kurang(hObject, eventdata,edit1,edit2,edit3)
 angka1 = str2num(get(edit1, 'string'));
 angka2 = str2num(get(edit2, 'string'));
 angka3 = angka1-angka2;
 set(edit3,'string',num2str(angka3));
endfunction

function clear(hObject, eventdata, edit1, edit2,edit3)

   str2numedit1 = get(edit1, 'string');
    set(edit1, 'string', ' ');
   
   str2numedit2 = get(edit2, 'string');
   set(edit2, 'string' , ' ' );
   
   str2numedit3 = get(edit3, 'string');
   set(edit3,'string', ' ');
   
   uicontrol(edit1)
 endfunction

 function close(hObject, eventdata, edit1,edit2,edit3)
   
   clearStr = 'clear all';
   evalin('base',clearStr);
   
   delete(figure(1));
 endfunction

