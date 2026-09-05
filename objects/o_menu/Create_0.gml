
size_1_select = instance_create_layer(x, y - 111,  "Instances", o_selectbox);
size_2_select = instance_create_layer(x, y,  "Instances", o_selectbox);
size_3_select = instance_create_layer(x, y + 111,  "Instances", o_selectbox);

size_1_select.selected = false;
size_2_select.selected = false;
size_3_select.selected = false;