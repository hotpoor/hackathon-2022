К┐
┘Ю
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
л
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.8.0-dev202110082v1.12.1-65098-g329795f305d8╜ю
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:n*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
к
'simple_rnn_40/simple_rnn_cell_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*8
shared_name)'simple_rnn_40/simple_rnn_cell_40/kernel
г
;simple_rnn_40/simple_rnn_cell_40/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_40/simple_rnn_cell_40/kernel*
_output_shapes

:n*
dtype0
╛
1simple_rnn_40/simple_rnn_cell_40/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*B
shared_name31simple_rnn_40/simple_rnn_cell_40/recurrent_kernel
╖
Esimple_rnn_40/simple_rnn_cell_40/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_40/simple_rnn_cell_40/recurrent_kernel*
_output_shapes

:nn*
dtype0
в
%simple_rnn_40/simple_rnn_cell_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*6
shared_name'%simple_rnn_40/simple_rnn_cell_40/bias
Ы
9simple_rnn_40/simple_rnn_cell_40/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_40/simple_rnn_cell_40/bias*
_output_shapes
:n*
dtype0
к
'simple_rnn_41/simple_rnn_cell_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*8
shared_name)'simple_rnn_41/simple_rnn_cell_41/kernel
г
;simple_rnn_41/simple_rnn_cell_41/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_41/simple_rnn_cell_41/kernel*
_output_shapes

:nn*
dtype0
╛
1simple_rnn_41/simple_rnn_cell_41/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*B
shared_name31simple_rnn_41/simple_rnn_cell_41/recurrent_kernel
╖
Esimple_rnn_41/simple_rnn_cell_41/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_41/simple_rnn_cell_41/recurrent_kernel*
_output_shapes

:nn*
dtype0
в
%simple_rnn_41/simple_rnn_cell_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*6
shared_name'%simple_rnn_41/simple_rnn_cell_41/bias
Ы
9simple_rnn_41/simple_rnn_cell_41/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_41/simple_rnn_cell_41/bias*
_output_shapes
:n*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
И
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*'
shared_nameAdam/dense_17/kernel/m
Б
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:n*
dtype0
А
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0
╕
.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*?
shared_name0.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/m
▒
BAdam/simple_rnn_40/simple_rnn_cell_40/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/m*
_output_shapes

:n*
dtype0
╠
8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*I
shared_name:8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/m
┼
LAdam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/m*
_output_shapes

:nn*
dtype0
░
,Adam/simple_rnn_40/simple_rnn_cell_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*=
shared_name.,Adam/simple_rnn_40/simple_rnn_cell_40/bias/m
й
@Adam/simple_rnn_40/simple_rnn_cell_40/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_40/simple_rnn_cell_40/bias/m*
_output_shapes
:n*
dtype0
╕
.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*?
shared_name0.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/m
▒
BAdam/simple_rnn_41/simple_rnn_cell_41/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/m*
_output_shapes

:nn*
dtype0
╠
8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*I
shared_name:8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/m
┼
LAdam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/m*
_output_shapes

:nn*
dtype0
░
,Adam/simple_rnn_41/simple_rnn_cell_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*=
shared_name.,Adam/simple_rnn_41/simple_rnn_cell_41/bias/m
й
@Adam/simple_rnn_41/simple_rnn_cell_41/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_41/simple_rnn_cell_41/bias/m*
_output_shapes
:n*
dtype0
И
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*'
shared_nameAdam/dense_17/kernel/v
Б
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:n*
dtype0
А
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0
╕
.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*?
shared_name0.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/v
▒
BAdam/simple_rnn_40/simple_rnn_cell_40/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/v*
_output_shapes

:n*
dtype0
╠
8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*I
shared_name:8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/v
┼
LAdam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/v*
_output_shapes

:nn*
dtype0
░
,Adam/simple_rnn_40/simple_rnn_cell_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*=
shared_name.,Adam/simple_rnn_40/simple_rnn_cell_40/bias/v
й
@Adam/simple_rnn_40/simple_rnn_cell_40/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_40/simple_rnn_cell_40/bias/v*
_output_shapes
:n*
dtype0
╕
.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*?
shared_name0.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/v
▒
BAdam/simple_rnn_41/simple_rnn_cell_41/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/v*
_output_shapes

:nn*
dtype0
╠
8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*I
shared_name:8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/v
┼
LAdam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/v*
_output_shapes

:nn*
dtype0
░
,Adam/simple_rnn_41/simple_rnn_cell_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*=
shared_name.,Adam/simple_rnn_41/simple_rnn_cell_41/bias/v
й
@Adam/simple_rnn_41/simple_rnn_cell_41/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_41/simple_rnn_cell_41/bias/v*
_output_shapes
:n*
dtype0

NoOpNoOp
╠6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*З6
value¤5B·5 Bє5
А
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
i
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
i
	variables
trainable_variables
regularization_losses
 	keras_api
!_random_generator
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
╨
(iter

)beta_1

*beta_2
	+decay
,learning_rate"ml#mm-mn.mo/mp0mq1mr2ms"vt#vu-vv.vw/vx0vy1vz2v{
8
-0
.1
/2
03
14
25
"6
#7
8
-0
.1
/2
03
14
25
"6
#7
 
н
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
	regularization_losses
 
Х

-kernel
.recurrent_kernel
/bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<_random_generator
 

-0
.1
/2

-0
.1
/2
 
╣

=states
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
н
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
 
Х

0kernel
1recurrent_kernel
2bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L_random_generator
 

00
11
22

00
11
22
 
╣

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
н
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
н
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
$	variables
%trainable_variables
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_40/simple_rnn_cell_40/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_40/simple_rnn_cell_40/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_40/simple_rnn_cell_40/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'simple_rnn_41/simple_rnn_cell_41/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1simple_rnn_41/simple_rnn_cell_41/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_41/simple_rnn_cell_41/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

]0
 
 

-0
.1
/2

-0
.1
/2
 
н
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
8	variables
9trainable_variables
:regularization_losses
 
 
 

0
 
 
 
 
 
 
 
 

00
11
22

00
11
22
 
н
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	htotal
	icount
j	variables
k	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

j	variables
~|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/simple_rnn_40/simple_rnn_cell_40/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/simple_rnn_41/simple_rnn_cell_41/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/simple_rnn_40/simple_rnn_cell_40/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/simple_rnn_41/simple_rnn_cell_41/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
О
#serving_default_simple_rnn_40_inputPlaceholder*+
_output_shapes
:         <*
dtype0* 
shape:         <
°
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_40_input'simple_rnn_40/simple_rnn_cell_40/kernel%simple_rnn_40/simple_rnn_cell_40/bias1simple_rnn_40/simple_rnn_cell_40/recurrent_kernel'simple_rnn_41/simple_rnn_cell_41/kernel%simple_rnn_41/simple_rnn_cell_41/bias1simple_rnn_41/simple_rnn_cell_41/recurrent_kerneldense_17/kerneldense_17/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *,
f'R%
#__inference_signature_wrapper_63554
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▀
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;simple_rnn_40/simple_rnn_cell_40/kernel/Read/ReadVariableOpEsimple_rnn_40/simple_rnn_cell_40/recurrent_kernel/Read/ReadVariableOp9simple_rnn_40/simple_rnn_cell_40/bias/Read/ReadVariableOp;simple_rnn_41/simple_rnn_cell_41/kernel/Read/ReadVariableOpEsimple_rnn_41/simple_rnn_cell_41/recurrent_kernel/Read/ReadVariableOp9simple_rnn_41/simple_rnn_cell_41/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOpBAdam/simple_rnn_40/simple_rnn_cell_40/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_40/simple_rnn_cell_40/bias/m/Read/ReadVariableOpBAdam/simple_rnn_41/simple_rnn_cell_41/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_41/simple_rnn_cell_41/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOpBAdam/simple_rnn_40/simple_rnn_cell_40/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_40/simple_rnn_cell_40/bias/v/Read/ReadVariableOpBAdam/simple_rnn_41/simple_rnn_cell_41/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_41/simple_rnn_cell_41/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *'
f"R 
__inference__traced_save_65315
ю

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'simple_rnn_40/simple_rnn_cell_40/kernel1simple_rnn_40/simple_rnn_cell_40/recurrent_kernel%simple_rnn_40/simple_rnn_cell_40/bias'simple_rnn_41/simple_rnn_cell_41/kernel1simple_rnn_41/simple_rnn_cell_41/recurrent_kernel%simple_rnn_41/simple_rnn_cell_41/biastotalcountAdam/dense_17/kernel/mAdam/dense_17/bias/m.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/m8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/m,Adam/simple_rnn_40/simple_rnn_cell_40/bias/m.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/m8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/m,Adam/simple_rnn_41/simple_rnn_cell_41/bias/mAdam/dense_17/kernel/vAdam/dense_17/bias/v.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/v8Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/v,Adam/simple_rnn_40/simple_rnn_cell_40/bias/v.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/v8Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/v,Adam/simple_rnn_41/simple_rnn_cell_41/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В **
f%R#
!__inference__traced_restore_65418ь╦
В>
├
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64310
inputs_0C
1simple_rnn_cell_40_matmul_readvariableop_resource:n@
2simple_rnn_cell_40_biasadd_readvariableop_resource:nE
3simple_rnn_cell_40_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_40/BiasAdd/ReadVariableOpв(simple_rnn_cell_40/MatMul/ReadVariableOpв*simple_rnn_cell_40/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0б
simple_rnn_cell_40/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_40/BiasAddBiasAdd#simple_rnn_cell_40/MatMul:product:01simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_40/MatMul_1MatMulzeros:output:02simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_40/addAddV2#simple_rnn_cell_40/BiasAdd:output:0%simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_40/TanhTanhsimple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_40_matmul_readvariableop_resource2simple_rnn_cell_40_biasadd_readvariableop_resource3simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64244*
condR
while_cond_64243*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  nk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  n╥
NoOpNoOp*^simple_rnn_cell_40/BiasAdd/ReadVariableOp)^simple_rnn_cell_40/MatMul/ReadVariableOp+^simple_rnn_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2V
)simple_rnn_cell_40/BiasAdd/ReadVariableOp)simple_rnn_cell_40/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_40/MatMul/ReadVariableOp(simple_rnn_cell_40/MatMul/ReadVariableOp2X
*simple_rnn_cell_40/MatMul_1/ReadVariableOp*simple_rnn_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ш,
╨
while_body_64855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnH
:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_41_matmul_readvariableop_resource:nnF
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_41/MatMul/ReadVariableOpв0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
.while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0┼
while/simple_rnn_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_41/BiasAddBiasAdd)while/simple_rnn_cell_41/MatMul:product:07while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_41/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_41/addAddV2)while/simple_rnn_cell_41/BiasAdd:output:0+while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_41/TanhTanh while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_41/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_41/MatMul/ReadVariableOp1^while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_41_matmul_readvariableop_resource9while_simple_rnn_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_41/MatMul/ReadVariableOp.while/simple_rnn_cell_41/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
Г
ъ
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_65182

inputs
states_00
matmul_readvariableop_resource:nn-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nn*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         n:         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
■=
├
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64813
inputs_0C
1simple_rnn_cell_41_matmul_readvariableop_resource:nn@
2simple_rnn_cell_41_biasadd_readvariableop_resource:nE
3simple_rnn_cell_41_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_41/BiasAdd/ReadVariableOpв(simple_rnn_cell_41/MatMul/ReadVariableOpв*simple_rnn_cell_41/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskЪ
(simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0б
simple_rnn_cell_41/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_41/BiasAddBiasAdd#simple_rnn_cell_41/MatMul:product:01simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_41/MatMul_1MatMulzeros:output:02simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_41/addAddV2#simple_rnn_cell_41/BiasAdd:output:0%simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_41/TanhTanhsimple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_41_matmul_readvariableop_resource2simple_rnn_cell_41_biasadd_readvariableop_resource3simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64747*
condR
while_cond_64746*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n╥
NoOpNoOp*^simple_rnn_cell_41/BiasAdd/ReadVariableOp)^simple_rnn_cell_41/MatMul/ReadVariableOp+^simple_rnn_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  n: : : 2V
)simple_rnn_cell_41/BiasAdd/ReadVariableOp)simple_rnn_cell_41/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_41/MatMul/ReadVariableOp(simple_rnn_cell_41/MatMul/ReadVariableOp2X
*simple_rnn_cell_41/MatMul_1/ReadVariableOp*simple_rnn_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  n
"
_user_specified_name
inputs/0
╒
е
while_cond_62711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62711___redundant_placeholder03
/while_while_cond_62711___redundant_placeholder13
/while_while_cond_62711___redundant_placeholder23
/while_while_cond_62711___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╒
е
while_cond_64459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64459___redundant_placeholder03
/while_while_cond_64459___redundant_placeholder13
/while_while_cond_64459___redundant_placeholder23
/while_while_cond_64459___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
Ж
c
*__inference_dropout_40_layer_call_fn_64536

inputs
identityИвStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_63254s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         <n22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
╛

┌
2__inference_simple_rnn_cell_41_layer_call_fn_65165

inputs
states_0
unknown:nn
	unknown_0:n
	unknown_1:nn
identity

identity_1ИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62660o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         nq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         n:         n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
Г
╖
-__inference_simple_rnn_41_layer_call_fn_64586

inputs
unknown:nn
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63020o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
╔=
┴
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63020

inputsC
1simple_rnn_cell_41_matmul_readvariableop_resource:nn@
2simple_rnn_cell_41_biasadd_readvariableop_resource:nE
3simple_rnn_cell_41_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_41/BiasAdd/ReadVariableOpв(simple_rnn_cell_41/MatMul/ReadVariableOpв*simple_rnn_cell_41/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskЪ
(simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0б
simple_rnn_cell_41/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_41/BiasAddBiasAdd#simple_rnn_cell_41/MatMul:product:01simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_41/MatMul_1MatMulzeros:output:02simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_41/addAddV2#simple_rnn_cell_41/BiasAdd:output:0%simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_41/TanhTanhsimple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_41_matmul_readvariableop_resource2simple_rnn_cell_41_biasadd_readvariableop_resource3simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_62954*
condR
while_cond_62953*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n╥
NoOpNoOp*^simple_rnn_cell_41/BiasAdd/ReadVariableOp)^simple_rnn_cell_41/MatMul/ReadVariableOp+^simple_rnn_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <n: : : 2V
)simple_rnn_cell_41/BiasAdd/ReadVariableOp)simple_rnn_cell_41/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_41/MatMul/ReadVariableOp(simple_rnn_cell_41/MatMul/ReadVariableOp2X
*simple_rnn_cell_41/MatMul_1/ReadVariableOp*simple_rnn_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
╒
е
while_cond_64351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64351___redundant_placeholder03
/while_while_cond_64351___redundant_placeholder13
/while_while_cond_64351___redundant_placeholder23
/while_while_cond_64351___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
ш,
╨
while_body_64963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnH
:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_41_matmul_readvariableop_resource:nnF
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_41/MatMul/ReadVariableOpв0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
.while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0┼
while/simple_rnn_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_41/BiasAddBiasAdd)while/simple_rnn_cell_41/MatMul:product:07while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_41/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_41/addAddV2)while/simple_rnn_cell_41/BiasAdd:output:0+while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_41/TanhTanh while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_41/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_41/MatMul/ReadVariableOp1^while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_41_matmul_readvariableop_resource9while_simple_rnn_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_41/MatMul/ReadVariableOp.while/simple_rnn_cell_41/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
┐
╞
H__inference_sequential_17_layer_call_and_return_conditional_losses_63435

inputs%
simple_rnn_40_63413:n!
simple_rnn_40_63415:n%
simple_rnn_40_63417:nn%
simple_rnn_41_63421:nn!
simple_rnn_41_63423:n%
simple_rnn_41_63425:nn 
dense_17_63429:n
dense_17_63431:
identityИв dense_17/StatefulPartitionedCallв"dropout_40/StatefulPartitionedCallв"dropout_41/StatefulPartitionedCallв%simple_rnn_40/StatefulPartitionedCallв%simple_rnn_41/StatefulPartitionedCallб
%simple_rnn_40/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_40_63413simple_rnn_40_63415simple_rnn_40_63417*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_63378№
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_63254┬
%simple_rnn_41/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0simple_rnn_41_63421simple_rnn_41_63423simple_rnn_41_63425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63225Э
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_41/StatefulPartitionedCall:output:0#^dropout_40/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_63101Ч
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0dense_17_63429dense_17_63431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_63045x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp!^dense_17/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall&^simple_rnn_40/StatefulPartitionedCall&^simple_rnn_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall2N
%simple_rnn_40/StatefulPartitionedCall%simple_rnn_40/StatefulPartitionedCall2N
%simple_rnn_41/StatefulPartitionedCall%simple_rnn_41/StatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
пл
Х	
H__inference_sequential_17_layer_call_and_return_conditional_losses_64050

inputsQ
?simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource:nN
@simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resource:nS
Asimple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnQ
?simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource:nnN
@simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resource:nS
Asimple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource:nn9
'dense_17_matmul_readvariableop_resource:n6
(dense_17_biasadd_readvariableop_resource:
identityИвdense_17/BiasAdd/ReadVariableOpвdense_17/MatMul/ReadVariableOpв7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpв6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpв8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpвsimple_rnn_40/whileв7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpв6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpв8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpвsimple_rnn_41/whileI
simple_rnn_40/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
simple_rnn_40/strided_sliceStridedSlicesimple_rnn_40/Shape:output:0*simple_rnn_40/strided_slice/stack:output:0,simple_rnn_40/strided_slice/stack_1:output:0,simple_rnn_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_40/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :nЭ
simple_rnn_40/zeros/packedPack$simple_rnn_40/strided_slice:output:0%simple_rnn_40/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_40/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
simple_rnn_40/zerosFill#simple_rnn_40/zeros/packed:output:0"simple_rnn_40/zeros/Const:output:0*
T0*'
_output_shapes
:         nq
simple_rnn_40/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
simple_rnn_40/transpose	Transposeinputs%simple_rnn_40/transpose/perm:output:0*
T0*+
_output_shapes
:<         `
simple_rnn_40/Shape_1Shapesimple_rnn_40/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
simple_rnn_40/strided_slice_1StridedSlicesimple_rnn_40/Shape_1:output:0,simple_rnn_40/strided_slice_1/stack:output:0.simple_rnn_40/strided_slice_1/stack_1:output:0.simple_rnn_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_40/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▐
simple_rnn_40/TensorArrayV2TensorListReserve2simple_rnn_40/TensorArrayV2/element_shape:output:0&simple_rnn_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ф
Csimple_rnn_40/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
5simple_rnn_40/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_40/transpose:y:0Lsimple_rnn_40/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥m
#simple_rnn_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
simple_rnn_40/strided_slice_2StridedSlicesimple_rnn_40/transpose:y:0,simple_rnn_40/strided_slice_2/stack:output:0.simple_rnn_40/strided_slice_2/stack_1:output:0.simple_rnn_40/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╢
6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp?simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0╦
'simple_rnn_40/simple_rnn_cell_40/MatMulMatMul&simple_rnn_40/strided_slice_2:output:0>simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┤
7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0┘
(simple_rnn_40/simple_rnn_cell_40/BiasAddBiasAdd1simple_rnn_40/simple_rnn_cell_40/MatMul:product:0?simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n║
8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0┼
)simple_rnn_40/simple_rnn_cell_40/MatMul_1MatMulsimple_rnn_40/zeros:output:0@simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╟
$simple_rnn_40/simple_rnn_cell_40/addAddV21simple_rnn_40/simple_rnn_cell_40/BiasAdd:output:03simple_rnn_40/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nЙ
%simple_rnn_40/simple_rnn_cell_40/TanhTanh(simple_rnn_40/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n|
+simple_rnn_40/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   т
simple_rnn_40/TensorArrayV2_1TensorListReserve4simple_rnn_40/TensorArrayV2_1/element_shape:output:0&simple_rnn_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥T
simple_rnn_40/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_40/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_40/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
simple_rnn_40/whileWhile)simple_rnn_40/while/loop_counter:output:0/simple_rnn_40/while/maximum_iterations:output:0simple_rnn_40/time:output:0&simple_rnn_40/TensorArrayV2_1:handle:0simple_rnn_40/zeros:output:0&simple_rnn_40/strided_slice_1:output:0Esimple_rnn_40/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource@simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resourceAsimple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_40_while_body_63858**
cond"R 
simple_rnn_40_while_cond_63857*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations П
>simple_rnn_40/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ь
0simple_rnn_40/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_40/while:output:3Gsimple_rnn_40/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0v
#simple_rnn_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
simple_rnn_40/strided_slice_3StridedSlice9simple_rnn_40/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_40/strided_slice_3/stack:output:0.simple_rnn_40/strided_slice_3/stack_1:output:0.simple_rnn_40/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_masks
simple_rnn_40/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
simple_rnn_40/transpose_1	Transpose9simple_rnn_40/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_40/transpose_1/perm:output:0*
T0*+
_output_shapes
:         <n]
dropout_40/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Х
dropout_40/dropout/MulMulsimple_rnn_40/transpose_1:y:0!dropout_40/dropout/Const:output:0*
T0*+
_output_shapes
:         <ne
dropout_40/dropout/ShapeShapesimple_rnn_40/transpose_1:y:0*
T0*
_output_shapes
:▓
/dropout_40/dropout/random_uniform/RandomUniformRandomUniform!dropout_40/dropout/Shape:output:0*
T0*+
_output_shapes
:         <n*
dtype0*

seedf
!dropout_40/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
dropout_40/dropout/GreaterEqualGreaterEqual8dropout_40/dropout/random_uniform/RandomUniform:output:0*dropout_40/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         <nЙ
dropout_40/dropout/CastCast#dropout_40/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         <nО
dropout_40/dropout/Mul_1Muldropout_40/dropout/Mul:z:0dropout_40/dropout/Cast:y:0*
T0*+
_output_shapes
:         <n_
simple_rnn_41/ShapeShapedropout_40/dropout/Mul_1:z:0*
T0*
_output_shapes
:k
!simple_rnn_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
simple_rnn_41/strided_sliceStridedSlicesimple_rnn_41/Shape:output:0*simple_rnn_41/strided_slice/stack:output:0,simple_rnn_41/strided_slice/stack_1:output:0,simple_rnn_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_41/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :nЭ
simple_rnn_41/zeros/packedPack$simple_rnn_41/strided_slice:output:0%simple_rnn_41/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_41/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
simple_rnn_41/zerosFill#simple_rnn_41/zeros/packed:output:0"simple_rnn_41/zeros/Const:output:0*
T0*'
_output_shapes
:         nq
simple_rnn_41/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
simple_rnn_41/transpose	Transposedropout_40/dropout/Mul_1:z:0%simple_rnn_41/transpose/perm:output:0*
T0*+
_output_shapes
:<         n`
simple_rnn_41/Shape_1Shapesimple_rnn_41/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
simple_rnn_41/strided_slice_1StridedSlicesimple_rnn_41/Shape_1:output:0,simple_rnn_41/strided_slice_1/stack:output:0.simple_rnn_41/strided_slice_1/stack_1:output:0.simple_rnn_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_41/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▐
simple_rnn_41/TensorArrayV2TensorListReserve2simple_rnn_41/TensorArrayV2/element_shape:output:0&simple_rnn_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ф
Csimple_rnn_41/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   К
5simple_rnn_41/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_41/transpose:y:0Lsimple_rnn_41/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥m
#simple_rnn_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
simple_rnn_41/strided_slice_2StridedSlicesimple_rnn_41/transpose:y:0,simple_rnn_41/strided_slice_2/stack:output:0.simple_rnn_41/strided_slice_2/stack_1:output:0.simple_rnn_41/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_mask╢
6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp?simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0╦
'simple_rnn_41/simple_rnn_cell_41/MatMulMatMul&simple_rnn_41/strided_slice_2:output:0>simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┤
7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0┘
(simple_rnn_41/simple_rnn_cell_41/BiasAddBiasAdd1simple_rnn_41/simple_rnn_cell_41/MatMul:product:0?simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n║
8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0┼
)simple_rnn_41/simple_rnn_cell_41/MatMul_1MatMulsimple_rnn_41/zeros:output:0@simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╟
$simple_rnn_41/simple_rnn_cell_41/addAddV21simple_rnn_41/simple_rnn_cell_41/BiasAdd:output:03simple_rnn_41/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nЙ
%simple_rnn_41/simple_rnn_cell_41/TanhTanh(simple_rnn_41/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n|
+simple_rnn_41/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   т
simple_rnn_41/TensorArrayV2_1TensorListReserve4simple_rnn_41/TensorArrayV2_1/element_shape:output:0&simple_rnn_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥T
simple_rnn_41/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_41/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_41/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
simple_rnn_41/whileWhile)simple_rnn_41/while/loop_counter:output:0/simple_rnn_41/while/maximum_iterations:output:0simple_rnn_41/time:output:0&simple_rnn_41/TensorArrayV2_1:handle:0simple_rnn_41/zeros:output:0&simple_rnn_41/strided_slice_1:output:0Esimple_rnn_41/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource@simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resourceAsimple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_41_while_body_63970**
cond"R 
simple_rnn_41_while_cond_63969*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations П
>simple_rnn_41/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ь
0simple_rnn_41/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_41/while:output:3Gsimple_rnn_41/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0v
#simple_rnn_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
simple_rnn_41/strided_slice_3StridedSlice9simple_rnn_41/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_41/strided_slice_3/stack:output:0.simple_rnn_41/strided_slice_3/stack_1:output:0.simple_rnn_41/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_masks
simple_rnn_41/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
simple_rnn_41/transpose_1	Transpose9simple_rnn_41/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_41/transpose_1/perm:output:0*
T0*+
_output_shapes
:         <n]
dropout_41/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Ъ
dropout_41/dropout/MulMul&simple_rnn_41/strided_slice_3:output:0!dropout_41/dropout/Const:output:0*
T0*'
_output_shapes
:         nn
dropout_41/dropout/ShapeShape&simple_rnn_41/strided_slice_3:output:0*
T0*
_output_shapes
:╗
/dropout_41/dropout/random_uniform/RandomUniformRandomUniform!dropout_41/dropout/Shape:output:0*
T0*'
_output_shapes
:         n*
dtype0*

seed*
seed2f
!dropout_41/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╟
dropout_41/dropout/GreaterEqualGreaterEqual8dropout_41/dropout/random_uniform/RandomUniform:output:0*dropout_41/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         nЕ
dropout_41/dropout/CastCast#dropout_41/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         nК
dropout_41/dropout/Mul_1Muldropout_41/dropout/Mul:z:0dropout_41/dropout/Cast:y:0*
T0*'
_output_shapes
:         nЖ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0С
dense_17/MatMulMatMuldropout_41/dropout/Mul_1:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp8^simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp7^simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp9^simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp^simple_rnn_40/while8^simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp7^simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp9^simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp^simple_rnn_41/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2r
7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp2p
6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp2t
8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp2*
simple_rnn_40/whilesimple_rnn_40/while2r
7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp2p
6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp2t
8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp2*
simple_rnn_41/whilesimple_rnn_41/while:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
еI
с
__inference__traced_save_65315
file_prefix.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_simple_rnn_40_simple_rnn_cell_40_kernel_read_readvariableopP
Lsavev2_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_40_simple_rnn_cell_40_bias_read_readvariableopF
Bsavev2_simple_rnn_41_simple_rnn_cell_41_kernel_read_readvariableopP
Lsavev2_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_41_simple_rnn_cell_41_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_40_simple_rnn_cell_40_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_40_simple_rnn_cell_40_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_41_simple_rnn_cell_41_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_41_simple_rnn_cell_41_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_40_simple_rnn_cell_40_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_40_simple_rnn_cell_40_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_41_simple_rnn_cell_41_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_41_simple_rnn_cell_41_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ╡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*▐
value╘B╤ B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHн
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╔
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_simple_rnn_40_simple_rnn_cell_40_kernel_read_readvariableopLsavev2_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_read_readvariableop@savev2_simple_rnn_40_simple_rnn_cell_40_bias_read_readvariableopBsavev2_simple_rnn_41_simple_rnn_cell_41_kernel_read_readvariableopLsavev2_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_read_readvariableop@savev2_simple_rnn_41_simple_rnn_cell_41_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableopIsavev2_adam_simple_rnn_40_simple_rnn_cell_40_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_40_simple_rnn_cell_40_bias_m_read_readvariableopIsavev2_adam_simple_rnn_41_simple_rnn_cell_41_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_41_simple_rnn_cell_41_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableopIsavev2_adam_simple_rnn_40_simple_rnn_cell_40_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_40_simple_rnn_cell_40_bias_v_read_readvariableopIsavev2_adam_simple_rnn_41_simple_rnn_cell_41_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_41_simple_rnn_cell_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*є
_input_shapesс
▐: :n:: : : : : :n:nn:n:nn:nn:n: : :n::n:nn:n:nn:nn:n:n::n:nn:n:nn:nn:n: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:n: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:$	 

_output_shapes

:nn: 


_output_shapes
:n:$ 

_output_shapes

:nn:$ 

_output_shapes

:nn: 

_output_shapes
:n:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n: 

_output_shapes
::$ 

_output_shapes

:n:$ 

_output_shapes

:nn: 

_output_shapes
:n:$ 

_output_shapes

:nn:$ 

_output_shapes

:nn: 

_output_shapes
:n:$ 

_output_shapes

:n: 

_output_shapes
::$ 

_output_shapes

:n:$ 

_output_shapes

:nn: 

_output_shapes
:n:$ 

_output_shapes

:nn:$ 

_output_shapes

:nn: 

_output_shapes
:n: 

_output_shapes
: 
╦
╣
,sequential_17_simple_rnn_41_while_cond_62126T
Psequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_loop_counterZ
Vsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_maximum_iterations1
-sequential_17_simple_rnn_41_while_placeholder3
/sequential_17_simple_rnn_41_while_placeholder_13
/sequential_17_simple_rnn_41_while_placeholder_2V
Rsequential_17_simple_rnn_41_while_less_sequential_17_simple_rnn_41_strided_slice_1k
gsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_cond_62126___redundant_placeholder0k
gsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_cond_62126___redundant_placeholder1k
gsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_cond_62126___redundant_placeholder2k
gsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_cond_62126___redundant_placeholder3.
*sequential_17_simple_rnn_41_while_identity
╥
&sequential_17/simple_rnn_41/while/LessLess-sequential_17_simple_rnn_41_while_placeholderRsequential_17_simple_rnn_41_while_less_sequential_17_simple_rnn_41_strided_slice_1*
T0*
_output_shapes
: Г
*sequential_17/simple_rnn_41/while/IdentityIdentity*sequential_17/simple_rnn_41/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_17_simple_rnn_41_while_identity3sequential_17/simple_rnn_41/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
 	
d
E__inference_dropout_41_layer_call_and_return_conditional_losses_63101

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         nC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         n*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         no
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         ni
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         nY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         n"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         n:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
■	
═
-__inference_sequential_17_layer_call_fn_63475
simple_rnn_40_input
unknown:n
	unknown_0:n
	unknown_1:nn
	unknown_2:nn
	unknown_3:n
	unknown_4:nn
	unknown_5:n
	unknown_6:
identityИвStatefulPartitionedCall╜
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_40_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_63435o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:         <
-
_user_specified_namesimple_rnn_40_input
ш,
╨
while_body_63312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nH
:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_40_matmul_readvariableop_resource:nF
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_40/MatMul/ReadVariableOpв0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0┼
while/simple_rnn_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_40/BiasAddBiasAdd)while/simple_rnn_cell_40/MatMul:product:07while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_40/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_40/addAddV2)while/simple_rnn_cell_40/BiasAdd:output:0+while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_40/TanhTanh while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_40/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_40/MatMul/ReadVariableOp1^while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_40_matmul_readvariableop_resource9while_simple_rnn_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_40/MatMul/ReadVariableOp.while/simple_rnn_cell_40/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
Л
╖
-__inference_simple_rnn_40_layer_call_fn_64094

inputs
unknown:n
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_63378s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
┤
F
*__inference_dropout_40_layer_call_fn_64531

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_62911d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         <n"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         <n:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
Г
ъ
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_65137

inputs
states_00
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
щ
Й
H__inference_sequential_17_layer_call_and_return_conditional_losses_63500
simple_rnn_40_input%
simple_rnn_40_63478:n!
simple_rnn_40_63480:n%
simple_rnn_40_63482:nn%
simple_rnn_41_63486:nn!
simple_rnn_41_63488:n%
simple_rnn_41_63490:nn 
dense_17_63494:n
dense_17_63496:
identityИв dense_17/StatefulPartitionedCallв%simple_rnn_40/StatefulPartitionedCallв%simple_rnn_41/StatefulPartitionedCallо
%simple_rnn_40/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_40_inputsimple_rnn_40_63478simple_rnn_40_63480simple_rnn_40_63482*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62898ь
dropout_40/PartitionedCallPartitionedCall.simple_rnn_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_62911║
%simple_rnn_41/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0simple_rnn_41_63486simple_rnn_41_63488simple_rnn_41_63490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63020ш
dropout_41/PartitionedCallPartitionedCall.simple_rnn_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_63033П
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0dense_17_63494dense_17_63496*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_63045x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╣
NoOpNoOp!^dense_17/StatefulPartitionedCall&^simple_rnn_40/StatefulPartitionedCall&^simple_rnn_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2N
%simple_rnn_40/StatefulPartitionedCall%simple_rnn_40/StatefulPartitionedCall2N
%simple_rnn_41/StatefulPartitionedCall%simple_rnn_41/StatefulPartitionedCall:` \
+
_output_shapes
:         <
-
_user_specified_namesimple_rnn_40_input
╔=
┴
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63225

inputsC
1simple_rnn_cell_41_matmul_readvariableop_resource:nn@
2simple_rnn_cell_41_biasadd_readvariableop_resource:nE
3simple_rnn_cell_41_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_41/BiasAdd/ReadVariableOpв(simple_rnn_cell_41/MatMul/ReadVariableOpв*simple_rnn_cell_41/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskЪ
(simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0б
simple_rnn_cell_41/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_41/BiasAddBiasAdd#simple_rnn_cell_41/MatMul:product:01simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_41/MatMul_1MatMulzeros:output:02simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_41/addAddV2#simple_rnn_cell_41/BiasAdd:output:0%simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_41/TanhTanhsimple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_41_matmul_readvariableop_resource2simple_rnn_cell_41_biasadd_readvariableop_resource3simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_63159*
condR
while_cond_63158*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n╥
NoOpNoOp*^simple_rnn_cell_41/BiasAdd/ReadVariableOp)^simple_rnn_cell_41/MatMul/ReadVariableOp+^simple_rnn_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <n: : : 2V
)simple_rnn_cell_41/BiasAdd/ReadVariableOp)simple_rnn_cell_41/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_41/MatMul/ReadVariableOp(simple_rnn_cell_41/MatMul/ReadVariableOp2X
*simple_rnn_cell_41/MatMul_1/ReadVariableOp*simple_rnn_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
БG
Ь
,sequential_17_simple_rnn_41_while_body_62127T
Psequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_loop_counterZ
Vsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_maximum_iterations1
-sequential_17_simple_rnn_41_while_placeholder3
/sequential_17_simple_rnn_41_while_placeholder_13
/sequential_17_simple_rnn_41_while_placeholder_2S
Osequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_strided_slice_1_0Р
Лsequential_17_simple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnd
Vsequential_17_simple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:ni
Wsequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn.
*sequential_17_simple_rnn_41_while_identity0
,sequential_17_simple_rnn_41_while_identity_10
,sequential_17_simple_rnn_41_while_identity_20
,sequential_17_simple_rnn_41_while_identity_30
,sequential_17_simple_rnn_41_while_identity_4Q
Msequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_strided_slice_1О
Йsequential_17_simple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_41_tensorarrayunstack_tensorlistfromtensore
Ssequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource:nnb
Tsequential_17_simple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource:ng
Usequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИвKsequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpвJsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpвLsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpд
Ssequential_17/simple_rnn_41/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   │
Esequential_17/simple_rnn_41/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЛsequential_17_simple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0-sequential_17_simple_rnn_41_while_placeholder\sequential_17/simple_rnn_41/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0р
Jsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOpUsequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0Щ
;sequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMulMatMulLsequential_17/simple_rnn_41/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n▐
Ksequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOpVsequential_17_simple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0Х
<sequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAddBiasAddEsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul:product:0Ssequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nф
Lsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOpWsequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0А
=sequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1MatMul/sequential_17_simple_rnn_41_while_placeholder_2Tsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nГ
8sequential_17/simple_rnn_41/while/simple_rnn_cell_41/addAddV2Esequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd:output:0Gsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         n▒
9sequential_17/simple_rnn_41/while/simple_rnn_cell_41/TanhTanh<sequential_17/simple_rnn_41/while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n║
Fsequential_17/simple_rnn_41/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_17_simple_rnn_41_while_placeholder_1-sequential_17_simple_rnn_41_while_placeholder=sequential_17/simple_rnn_41/while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥i
'sequential_17/simple_rnn_41/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :░
%sequential_17/simple_rnn_41/while/addAddV2-sequential_17_simple_rnn_41_while_placeholder0sequential_17/simple_rnn_41/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_17/simple_rnn_41/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╫
'sequential_17/simple_rnn_41/while/add_1AddV2Psequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_loop_counter2sequential_17/simple_rnn_41/while/add_1/y:output:0*
T0*
_output_shapes
: н
*sequential_17/simple_rnn_41/while/IdentityIdentity+sequential_17/simple_rnn_41/while/add_1:z:0'^sequential_17/simple_rnn_41/while/NoOp*
T0*
_output_shapes
: ┌
,sequential_17/simple_rnn_41/while/Identity_1IdentityVsequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_while_maximum_iterations'^sequential_17/simple_rnn_41/while/NoOp*
T0*
_output_shapes
: н
,sequential_17/simple_rnn_41/while/Identity_2Identity)sequential_17/simple_rnn_41/while/add:z:0'^sequential_17/simple_rnn_41/while/NoOp*
T0*
_output_shapes
: э
,sequential_17/simple_rnn_41/while/Identity_3IdentityVsequential_17/simple_rnn_41/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_17/simple_rnn_41/while/NoOp*
T0*
_output_shapes
: :щш╥╥
,sequential_17/simple_rnn_41/while/Identity_4Identity=sequential_17/simple_rnn_41/while/simple_rnn_cell_41/Tanh:y:0'^sequential_17/simple_rnn_41/while/NoOp*
T0*'
_output_shapes
:         n╥
&sequential_17/simple_rnn_41/while/NoOpNoOpL^sequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpK^sequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpM^sequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_17_simple_rnn_41_while_identity3sequential_17/simple_rnn_41/while/Identity:output:0"e
,sequential_17_simple_rnn_41_while_identity_15sequential_17/simple_rnn_41/while/Identity_1:output:0"e
,sequential_17_simple_rnn_41_while_identity_25sequential_17/simple_rnn_41/while/Identity_2:output:0"e
,sequential_17_simple_rnn_41_while_identity_35sequential_17/simple_rnn_41/while/Identity_3:output:0"e
,sequential_17_simple_rnn_41_while_identity_45sequential_17/simple_rnn_41/while/Identity_4:output:0"а
Msequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_strided_slice_1Osequential_17_simple_rnn_41_while_sequential_17_simple_rnn_41_strided_slice_1_0"о
Tsequential_17_simple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resourceVsequential_17_simple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"░
Usequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resourceWsequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"м
Ssequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resourceUsequential_17_simple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0"Ъ
Йsequential_17_simple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_41_tensorarrayunstack_tensorlistfromtensorЛsequential_17_simple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2Ъ
Ksequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpKsequential_17/simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2Ш
Jsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpJsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp2Ь
Lsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpLsequential_17/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
─=
┴
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62898

inputsC
1simple_rnn_cell_40_matmul_readvariableop_resource:n@
2simple_rnn_cell_40_biasadd_readvariableop_resource:nE
3simple_rnn_cell_40_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_40/BiasAdd/ReadVariableOpв(simple_rnn_cell_40/MatMul/ReadVariableOpв*simple_rnn_cell_40/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0б
simple_rnn_cell_40/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_40/BiasAddBiasAdd#simple_rnn_cell_40/MatMul:product:01simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_40/MatMul_1MatMulzeros:output:02simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_40/addAddV2#simple_rnn_cell_40/BiasAdd:output:0%simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_40/TanhTanhsimple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_40_matmul_readvariableop_resource2simple_rnn_cell_40_biasadd_readvariableop_resource3simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_62832*
condR
while_cond_62831*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         <n╥
NoOpNoOp*^simple_rnn_cell_40/BiasAdd/ReadVariableOp)^simple_rnn_cell_40/MatMul/ReadVariableOp+^simple_rnn_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <: : : 2V
)simple_rnn_cell_40/BiasAdd/ReadVariableOp)simple_rnn_cell_40/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_40/MatMul/ReadVariableOp(simple_rnn_cell_40/MatMul/ReadVariableOp2X
*simple_rnn_cell_40/MatMul_1/ReadVariableOp*simple_rnn_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
╨

п
simple_rnn_41_while_cond_637428
4simple_rnn_41_while_simple_rnn_41_while_loop_counter>
:simple_rnn_41_while_simple_rnn_41_while_maximum_iterations#
simple_rnn_41_while_placeholder%
!simple_rnn_41_while_placeholder_1%
!simple_rnn_41_while_placeholder_2:
6simple_rnn_41_while_less_simple_rnn_41_strided_slice_1O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63742___redundant_placeholder0O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63742___redundant_placeholder1O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63742___redundant_placeholder2O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63742___redundant_placeholder3 
simple_rnn_41_while_identity
Ъ
simple_rnn_41/while/LessLesssimple_rnn_41_while_placeholder6simple_rnn_41_while_less_simple_rnn_41_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_41/while/IdentityIdentitysimple_rnn_41/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_41_while_identity%simple_rnn_41/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
ц
╙
H__inference_sequential_17_layer_call_and_return_conditional_losses_63525
simple_rnn_40_input%
simple_rnn_40_63503:n!
simple_rnn_40_63505:n%
simple_rnn_40_63507:nn%
simple_rnn_41_63511:nn!
simple_rnn_41_63513:n%
simple_rnn_41_63515:nn 
dense_17_63519:n
dense_17_63521:
identityИв dense_17/StatefulPartitionedCallв"dropout_40/StatefulPartitionedCallв"dropout_41/StatefulPartitionedCallв%simple_rnn_40/StatefulPartitionedCallв%simple_rnn_41/StatefulPartitionedCallо
%simple_rnn_40/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_40_inputsimple_rnn_40_63503simple_rnn_40_63505simple_rnn_40_63507*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_63378№
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_63254┬
%simple_rnn_41/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0simple_rnn_41_63511simple_rnn_41_63513simple_rnn_41_63515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63225Э
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_41/StatefulPartitionedCall:output:0#^dropout_40/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_63101Ч
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0dense_17_63519dense_17_63521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_63045x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp!^dense_17/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall&^simple_rnn_40/StatefulPartitionedCall&^simple_rnn_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall2N
%simple_rnn_40/StatefulPartitionedCall%simple_rnn_40/StatefulPartitionedCall2N
%simple_rnn_41/StatefulPartitionedCall%simple_rnn_41/StatefulPartitionedCall:` \
+
_output_shapes
:         <
-
_user_specified_namesimple_rnn_40_input
БG
Ь
,sequential_17_simple_rnn_40_while_body_62022T
Psequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_loop_counterZ
Vsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_maximum_iterations1
-sequential_17_simple_rnn_40_while_placeholder3
/sequential_17_simple_rnn_40_while_placeholder_13
/sequential_17_simple_rnn_40_while_placeholder_2S
Osequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_strided_slice_1_0Р
Лsequential_17_simple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nd
Vsequential_17_simple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:ni
Wsequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn.
*sequential_17_simple_rnn_40_while_identity0
,sequential_17_simple_rnn_40_while_identity_10
,sequential_17_simple_rnn_40_while_identity_20
,sequential_17_simple_rnn_40_while_identity_30
,sequential_17_simple_rnn_40_while_identity_4Q
Msequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_strided_slice_1О
Йsequential_17_simple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_40_tensorarrayunstack_tensorlistfromtensore
Ssequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource:nb
Tsequential_17_simple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource:ng
Usequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИвKsequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpвJsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpвLsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpд
Ssequential_17/simple_rnn_40/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       │
Esequential_17/simple_rnn_40/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЛsequential_17_simple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0-sequential_17_simple_rnn_40_while_placeholder\sequential_17/simple_rnn_40/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0р
Jsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOpUsequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0Щ
;sequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMulMatMulLsequential_17/simple_rnn_40/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n▐
Ksequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOpVsequential_17_simple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0Х
<sequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAddBiasAddEsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul:product:0Ssequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nф
Lsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOpWsequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0А
=sequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1MatMul/sequential_17_simple_rnn_40_while_placeholder_2Tsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nГ
8sequential_17/simple_rnn_40/while/simple_rnn_cell_40/addAddV2Esequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd:output:0Gsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         n▒
9sequential_17/simple_rnn_40/while/simple_rnn_cell_40/TanhTanh<sequential_17/simple_rnn_40/while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n║
Fsequential_17/simple_rnn_40/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_17_simple_rnn_40_while_placeholder_1-sequential_17_simple_rnn_40_while_placeholder=sequential_17/simple_rnn_40/while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥i
'sequential_17/simple_rnn_40/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :░
%sequential_17/simple_rnn_40/while/addAddV2-sequential_17_simple_rnn_40_while_placeholder0sequential_17/simple_rnn_40/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_17/simple_rnn_40/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╫
'sequential_17/simple_rnn_40/while/add_1AddV2Psequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_loop_counter2sequential_17/simple_rnn_40/while/add_1/y:output:0*
T0*
_output_shapes
: н
*sequential_17/simple_rnn_40/while/IdentityIdentity+sequential_17/simple_rnn_40/while/add_1:z:0'^sequential_17/simple_rnn_40/while/NoOp*
T0*
_output_shapes
: ┌
,sequential_17/simple_rnn_40/while/Identity_1IdentityVsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_maximum_iterations'^sequential_17/simple_rnn_40/while/NoOp*
T0*
_output_shapes
: н
,sequential_17/simple_rnn_40/while/Identity_2Identity)sequential_17/simple_rnn_40/while/add:z:0'^sequential_17/simple_rnn_40/while/NoOp*
T0*
_output_shapes
: э
,sequential_17/simple_rnn_40/while/Identity_3IdentityVsequential_17/simple_rnn_40/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_17/simple_rnn_40/while/NoOp*
T0*
_output_shapes
: :щш╥╥
,sequential_17/simple_rnn_40/while/Identity_4Identity=sequential_17/simple_rnn_40/while/simple_rnn_cell_40/Tanh:y:0'^sequential_17/simple_rnn_40/while/NoOp*
T0*'
_output_shapes
:         n╥
&sequential_17/simple_rnn_40/while/NoOpNoOpL^sequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpK^sequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpM^sequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_17_simple_rnn_40_while_identity3sequential_17/simple_rnn_40/while/Identity:output:0"e
,sequential_17_simple_rnn_40_while_identity_15sequential_17/simple_rnn_40/while/Identity_1:output:0"e
,sequential_17_simple_rnn_40_while_identity_25sequential_17/simple_rnn_40/while/Identity_2:output:0"e
,sequential_17_simple_rnn_40_while_identity_35sequential_17/simple_rnn_40/while/Identity_3:output:0"e
,sequential_17_simple_rnn_40_while_identity_45sequential_17/simple_rnn_40/while/Identity_4:output:0"а
Msequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_strided_slice_1Osequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_strided_slice_1_0"о
Tsequential_17_simple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resourceVsequential_17_simple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"░
Usequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resourceWsequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"м
Ssequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resourceUsequential_17_simple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0"Ъ
Йsequential_17_simple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_40_tensorarrayunstack_tensorlistfromtensorЛsequential_17_simple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_sequential_17_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2Ъ
Ksequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpKsequential_17/simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2Ш
Jsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpJsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp2Ь
Lsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpLsequential_17/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
ш,
╨
while_body_62832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nH
:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_40_matmul_readvariableop_resource:nF
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_40/MatMul/ReadVariableOpв0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0┼
while/simple_rnn_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_40/BiasAddBiasAdd)while/simple_rnn_cell_40/MatMul:product:07while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_40/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_40/addAddV2)while/simple_rnn_cell_40/BiasAdd:output:0+while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_40/TanhTanh while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_40/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_40/MatMul/ReadVariableOp1^while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_40_matmul_readvariableop_resource9while_simple_rnn_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_40/MatMul/ReadVariableOp.while/simple_rnn_cell_40/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
─=
┴
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64418

inputsC
1simple_rnn_cell_40_matmul_readvariableop_resource:n@
2simple_rnn_cell_40_biasadd_readvariableop_resource:nE
3simple_rnn_cell_40_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_40/BiasAdd/ReadVariableOpв(simple_rnn_cell_40/MatMul/ReadVariableOpв*simple_rnn_cell_40/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0б
simple_rnn_cell_40/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_40/BiasAddBiasAdd#simple_rnn_cell_40/MatMul:product:01simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_40/MatMul_1MatMulzeros:output:02simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_40/addAddV2#simple_rnn_cell_40/BiasAdd:output:0%simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_40/TanhTanhsimple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_40_matmul_readvariableop_resource2simple_rnn_cell_40_biasadd_readvariableop_resource3simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64352*
condR
while_cond_64351*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         <n╥
NoOpNoOp*^simple_rnn_cell_40/BiasAdd/ReadVariableOp)^simple_rnn_cell_40/MatMul/ReadVariableOp+^simple_rnn_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <: : : 2V
)simple_rnn_cell_40/BiasAdd/ReadVariableOp)simple_rnn_cell_40/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_40/MatMul/ReadVariableOp(simple_rnn_cell_40/MatMul/ReadVariableOp2X
*simple_rnn_cell_40/MatMul_1/ReadVariableOp*simple_rnn_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
╒
е
while_cond_62419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62419___redundant_placeholder03
/while_while_cond_62419___redundant_placeholder13
/while_while_cond_62419___redundant_placeholder23
/while_while_cond_62419___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╒
е
while_cond_62260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62260___redundant_placeholder03
/while_while_cond_62260___redundant_placeholder13
/while_while_cond_62260___redundant_placeholder23
/while_while_cond_62260___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
Я

d
E__inference_dropout_40_layer_call_and_return_conditional_losses_63254

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         <nC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ь
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         <n*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         <ns
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         <nm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         <n]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         <n"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         <n:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
■	
═
-__inference_sequential_17_layer_call_fn_63071
simple_rnn_40_input
unknown:n
	unknown_0:n
	unknown_1:nn
	unknown_2:nn
	unknown_3:n
	unknown_4:nn
	unknown_5:n
	unknown_6:
identityИвStatefulPartitionedCall╜
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_40_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_63052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:         <
-
_user_specified_namesimple_rnn_40_input
Ы
╣
-__inference_simple_rnn_41_layer_call_fn_64564
inputs_0
unknown:nn
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_62616o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  n
"
_user_specified_name
inputs/0
╔=
┴
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64921

inputsC
1simple_rnn_cell_41_matmul_readvariableop_resource:nn@
2simple_rnn_cell_41_biasadd_readvariableop_resource:nE
3simple_rnn_cell_41_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_41/BiasAdd/ReadVariableOpв(simple_rnn_cell_41/MatMul/ReadVariableOpв*simple_rnn_cell_41/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskЪ
(simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0б
simple_rnn_cell_41/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_41/BiasAddBiasAdd#simple_rnn_cell_41/MatMul:product:01simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_41/MatMul_1MatMulzeros:output:02simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_41/addAddV2#simple_rnn_cell_41/BiasAdd:output:0%simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_41/TanhTanhsimple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_41_matmul_readvariableop_resource2simple_rnn_cell_41_biasadd_readvariableop_resource3simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64855*
condR
while_cond_64854*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n╥
NoOpNoOp*^simple_rnn_cell_41/BiasAdd/ReadVariableOp)^simple_rnn_cell_41/MatMul/ReadVariableOp+^simple_rnn_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <n: : : 2V
)simple_rnn_cell_41/BiasAdd/ReadVariableOp)simple_rnn_cell_41/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_41/MatMul/ReadVariableOp(simple_rnn_cell_41/MatMul/ReadVariableOp2X
*simple_rnn_cell_41/MatMul_1/ReadVariableOp*simple_rnn_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
╛

┌
2__inference_simple_rnn_cell_40_layer_call_fn_65089

inputs
states_0
unknown:n
	unknown_0:n
	unknown_1:nn
identity

identity_1ИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         nq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
Ў
c
*__inference_dropout_41_layer_call_fn_65039

inputs
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_63101o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         n22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
╦
╣
,sequential_17_simple_rnn_40_while_cond_62021T
Psequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_loop_counterZ
Vsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_maximum_iterations1
-sequential_17_simple_rnn_40_while_placeholder3
/sequential_17_simple_rnn_40_while_placeholder_13
/sequential_17_simple_rnn_40_while_placeholder_2V
Rsequential_17_simple_rnn_40_while_less_sequential_17_simple_rnn_40_strided_slice_1k
gsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_cond_62021___redundant_placeholder0k
gsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_cond_62021___redundant_placeholder1k
gsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_cond_62021___redundant_placeholder2k
gsequential_17_simple_rnn_40_while_sequential_17_simple_rnn_40_while_cond_62021___redundant_placeholder3.
*sequential_17_simple_rnn_40_while_identity
╥
&sequential_17/simple_rnn_40/while/LessLess-sequential_17_simple_rnn_40_while_placeholderRsequential_17_simple_rnn_40_while_less_sequential_17_simple_rnn_40_strided_slice_1*
T0*
_output_shapes
: Г
*sequential_17/simple_rnn_40/while/IdentityIdentity*sequential_17/simple_rnn_40/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_17_simple_rnn_40_while_identity3sequential_17/simple_rnn_40/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╒
е
while_cond_63158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63158___redundant_placeholder03
/while_while_cond_63158___redundant_placeholder13
/while_while_cond_63158___redundant_placeholder23
/while_while_cond_63158___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
¤
ш
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62660

inputs

states0
matmul_readvariableop_resource:nn-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nn*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         n:         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs:OK
'
_output_shapes
:         n
 
_user_specified_namestates
Ф!
╤
while_body_62261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_40_62283_0:n.
 while_simple_rnn_cell_40_62285_0:n2
 while_simple_rnn_cell_40_62287_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_40_62283:n,
while_simple_rnn_cell_40_62285:n0
while_simple_rnn_cell_40_62287:nnИв0while/simple_rnn_cell_40/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
0while/simple_rnn_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_40_62283_0 while_simple_rnn_cell_40_62285_0 while_simple_rnn_cell_40_62287_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62248т
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_40/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥Ц
while/Identity_4Identity9while/simple_rnn_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         n

while/NoOpNoOp1^while/simple_rnn_cell_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_40_62283 while_simple_rnn_cell_40_62283_0"B
while_simple_rnn_cell_40_62285 while_simple_rnn_cell_40_62285_0"B
while_simple_rnn_cell_40_62287 while_simple_rnn_cell_40_62287_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2d
0while/simple_rnn_cell_40/StatefulPartitionedCall0while/simple_rnn_cell_40/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╒
е
while_cond_62953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62953___redundant_placeholder03
/while_while_cond_62953___redundant_placeholder13
/while_while_cond_62953___redundant_placeholder23
/while_while_cond_62953___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
ї9
Ї
simple_rnn_40_while_body_636388
4simple_rnn_40_while_simple_rnn_40_while_loop_counter>
:simple_rnn_40_while_simple_rnn_40_while_maximum_iterations#
simple_rnn_40_while_placeholder%
!simple_rnn_40_while_placeholder_1%
!simple_rnn_40_while_placeholder_27
3simple_rnn_40_while_simple_rnn_40_strided_slice_1_0s
osimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nV
Hsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:n[
Isimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn 
simple_rnn_40_while_identity"
simple_rnn_40_while_identity_1"
simple_rnn_40_while_identity_2"
simple_rnn_40_while_identity_3"
simple_rnn_40_while_identity_45
1simple_rnn_40_while_simple_rnn_40_strided_slice_1q
msimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource:nT
Fsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource:nY
Gsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpв>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpЦ
Esimple_rnn_40/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ь
7simple_rnn_40/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_40_while_placeholderNsimple_rnn_40/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0─
<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0я
-simple_rnn_40/while/simple_rnn_cell_40/MatMulMatMul>simple_rnn_40/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┬
=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0ы
.simple_rnn_40/while/simple_rnn_cell_40/BiasAddBiasAdd7simple_rnn_40/while/simple_rnn_cell_40/MatMul:product:0Esimple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╚
>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0╓
/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1MatMul!simple_rnn_40_while_placeholder_2Fsimple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┘
*simple_rnn_40/while/simple_rnn_cell_40/addAddV27simple_rnn_40/while/simple_rnn_cell_40/BiasAdd:output:09simple_rnn_40/while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nХ
+simple_rnn_40/while/simple_rnn_cell_40/TanhTanh.simple_rnn_40/while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nВ
8simple_rnn_40/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_40_while_placeholder_1simple_rnn_40_while_placeholder/simple_rnn_40/while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥[
simple_rnn_40/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
simple_rnn_40/while/addAddV2simple_rnn_40_while_placeholder"simple_rnn_40/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_40/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
simple_rnn_40/while/add_1AddV24simple_rnn_40_while_simple_rnn_40_while_loop_counter$simple_rnn_40/while/add_1/y:output:0*
T0*
_output_shapes
: Г
simple_rnn_40/while/IdentityIdentitysimple_rnn_40/while/add_1:z:0^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: в
simple_rnn_40/while/Identity_1Identity:simple_rnn_40_while_simple_rnn_40_while_maximum_iterations^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: Г
simple_rnn_40/while/Identity_2Identitysimple_rnn_40/while/add:z:0^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: ├
simple_rnn_40/while/Identity_3IdentityHsimple_rnn_40/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: :щш╥и
simple_rnn_40/while/Identity_4Identity/simple_rnn_40/while/simple_rnn_cell_40/Tanh:y:0^simple_rnn_40/while/NoOp*
T0*'
_output_shapes
:         nЪ
simple_rnn_40/while/NoOpNoOp>^simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp=^simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp?^simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_40_while_identity%simple_rnn_40/while/Identity:output:0"I
simple_rnn_40_while_identity_1'simple_rnn_40/while/Identity_1:output:0"I
simple_rnn_40_while_identity_2'simple_rnn_40/while/Identity_2:output:0"I
simple_rnn_40_while_identity_3'simple_rnn_40/while/Identity_3:output:0"I
simple_rnn_40_while_identity_4'simple_rnn_40/while/Identity_4:output:0"h
1simple_rnn_40_while_simple_rnn_40_strided_slice_13simple_rnn_40_while_simple_rnn_40_strided_slice_1_0"Т
Fsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resourceHsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"Ф
Gsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resourceIsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"Р
Esimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resourceGsimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0"р
msimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensorosimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2~
=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2|
<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp2А
>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╛

┌
2__inference_simple_rnn_cell_40_layer_call_fn_65103

inputs
states_0
unknown:n
	unknown_0:n
	unknown_1:nn
identity

identity_1ИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62368o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         nq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
С4
Ь
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_62616

inputs*
simple_rnn_cell_41_62541:nn&
simple_rnn_cell_41_62543:n*
simple_rnn_cell_41_62545:nn
identityИв*simple_rnn_cell_41/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskэ
*simple_rnn_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_41_62541simple_rnn_cell_41_62543simple_rnn_cell_41_62545*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62540n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_41_62541simple_rnn_cell_41_62543simple_rnn_cell_41_62545*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_62553*
condR
while_cond_62552*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n{
NoOpNoOp+^simple_rnn_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  n: : : 2X
*simple_rnn_cell_41/StatefulPartitionedCall*simple_rnn_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  n
 
_user_specified_nameinputs
Г
ъ
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_65120

inputs
states_00
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
ш,
╨
while_body_62954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnH
:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_41_matmul_readvariableop_resource:nnF
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_41/MatMul/ReadVariableOpв0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
.while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0┼
while/simple_rnn_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_41/BiasAddBiasAdd)while/simple_rnn_cell_41/MatMul:product:07while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_41/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_41/addAddV2)while/simple_rnn_cell_41/BiasAdd:output:0+while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_41/TanhTanh while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_41/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_41/MatMul/ReadVariableOp1^while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_41_matmul_readvariableop_resource9while_simple_rnn_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_41/MatMul/ReadVariableOp.while/simple_rnn_cell_41/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╡
╣
-__inference_simple_rnn_40_layer_call_fn_64061
inputs_0
unknown:n
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62324|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Я

d
E__inference_dropout_40_layer_call_and_return_conditional_losses_64553

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         <nC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ь
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         <n*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         <ns
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         <nm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         <n]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         <n"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         <n:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
╛

┌
2__inference_simple_rnn_cell_41_layer_call_fn_65151

inputs
states_0
unknown:nn
	unknown_0:n
	unknown_1:nn
identity

identity_1ИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62540o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         nq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         n:         n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
ї9
Ї
simple_rnn_41_while_body_637438
4simple_rnn_41_while_simple_rnn_41_while_loop_counter>
:simple_rnn_41_while_simple_rnn_41_while_maximum_iterations#
simple_rnn_41_while_placeholder%
!simple_rnn_41_while_placeholder_1%
!simple_rnn_41_while_placeholder_27
3simple_rnn_41_while_simple_rnn_41_strided_slice_1_0s
osimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnV
Hsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:n[
Isimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn 
simple_rnn_41_while_identity"
simple_rnn_41_while_identity_1"
simple_rnn_41_while_identity_2"
simple_rnn_41_while_identity_3"
simple_rnn_41_while_identity_45
1simple_rnn_41_while_simple_rnn_41_strided_slice_1q
msimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource:nnT
Fsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource:nY
Gsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpв>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpЦ
Esimple_rnn_41/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ь
7simple_rnn_41/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_41_while_placeholderNsimple_rnn_41/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0─
<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0я
-simple_rnn_41/while/simple_rnn_cell_41/MatMulMatMul>simple_rnn_41/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┬
=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0ы
.simple_rnn_41/while/simple_rnn_cell_41/BiasAddBiasAdd7simple_rnn_41/while/simple_rnn_cell_41/MatMul:product:0Esimple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╚
>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0╓
/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1MatMul!simple_rnn_41_while_placeholder_2Fsimple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┘
*simple_rnn_41/while/simple_rnn_cell_41/addAddV27simple_rnn_41/while/simple_rnn_cell_41/BiasAdd:output:09simple_rnn_41/while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nХ
+simple_rnn_41/while/simple_rnn_cell_41/TanhTanh.simple_rnn_41/while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nВ
8simple_rnn_41/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_41_while_placeholder_1simple_rnn_41_while_placeholder/simple_rnn_41/while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥[
simple_rnn_41/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
simple_rnn_41/while/addAddV2simple_rnn_41_while_placeholder"simple_rnn_41/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_41/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
simple_rnn_41/while/add_1AddV24simple_rnn_41_while_simple_rnn_41_while_loop_counter$simple_rnn_41/while/add_1/y:output:0*
T0*
_output_shapes
: Г
simple_rnn_41/while/IdentityIdentitysimple_rnn_41/while/add_1:z:0^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: в
simple_rnn_41/while/Identity_1Identity:simple_rnn_41_while_simple_rnn_41_while_maximum_iterations^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: Г
simple_rnn_41/while/Identity_2Identitysimple_rnn_41/while/add:z:0^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: ├
simple_rnn_41/while/Identity_3IdentityHsimple_rnn_41/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: :щш╥и
simple_rnn_41/while/Identity_4Identity/simple_rnn_41/while/simple_rnn_cell_41/Tanh:y:0^simple_rnn_41/while/NoOp*
T0*'
_output_shapes
:         nЪ
simple_rnn_41/while/NoOpNoOp>^simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp=^simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp?^simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_41_while_identity%simple_rnn_41/while/Identity:output:0"I
simple_rnn_41_while_identity_1'simple_rnn_41/while/Identity_1:output:0"I
simple_rnn_41_while_identity_2'simple_rnn_41/while/Identity_2:output:0"I
simple_rnn_41_while_identity_3'simple_rnn_41/while/Identity_3:output:0"I
simple_rnn_41_while_identity_4'simple_rnn_41/while/Identity_4:output:0"h
1simple_rnn_41_while_simple_rnn_41_strided_slice_13simple_rnn_41_while_simple_rnn_41_strided_slice_1_0"Т
Fsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resourceHsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"Ф
Gsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resourceIsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"Р
Esimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resourceGsimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0"р
msimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensorosimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2~
=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2|
<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp2А
>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╒
е
while_cond_62831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62831___redundant_placeholder03
/while_while_cond_62831___redundant_placeholder13
/while_while_cond_62831___redundant_placeholder23
/while_while_cond_62831___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
д
F
*__inference_dropout_41_layer_call_fn_65034

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_63033`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         n"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         n:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
Ы╣
Ў

 __inference__wrapped_model_62200
simple_rnn_40_input_
Msequential_17_simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource:n\
Nsequential_17_simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resource:na
Osequential_17_simple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource:nn_
Msequential_17_simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource:nn\
Nsequential_17_simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resource:na
Osequential_17_simple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnG
5sequential_17_dense_17_matmul_readvariableop_resource:nD
6sequential_17_dense_17_biasadd_readvariableop_resource:
identityИв-sequential_17/dense_17/BiasAdd/ReadVariableOpв,sequential_17/dense_17/MatMul/ReadVariableOpвEsequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpвDsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpвFsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpв!sequential_17/simple_rnn_40/whileвEsequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpвDsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpвFsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpв!sequential_17/simple_rnn_41/whiled
!sequential_17/simple_rnn_40/ShapeShapesimple_rnn_40_input*
T0*
_output_shapes
:y
/sequential_17/simple_rnn_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_17/simple_rnn_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_17/simple_rnn_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)sequential_17/simple_rnn_40/strided_sliceStridedSlice*sequential_17/simple_rnn_40/Shape:output:08sequential_17/simple_rnn_40/strided_slice/stack:output:0:sequential_17/simple_rnn_40/strided_slice/stack_1:output:0:sequential_17/simple_rnn_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_17/simple_rnn_40/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :n╟
(sequential_17/simple_rnn_40/zeros/packedPack2sequential_17/simple_rnn_40/strided_slice:output:03sequential_17/simple_rnn_40/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_17/simple_rnn_40/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!sequential_17/simple_rnn_40/zerosFill1sequential_17/simple_rnn_40/zeros/packed:output:00sequential_17/simple_rnn_40/zeros/Const:output:0*
T0*'
_output_shapes
:         n
*sequential_17/simple_rnn_40/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▓
%sequential_17/simple_rnn_40/transpose	Transposesimple_rnn_40_input3sequential_17/simple_rnn_40/transpose/perm:output:0*
T0*+
_output_shapes
:<         |
#sequential_17/simple_rnn_40/Shape_1Shape)sequential_17/simple_rnn_40/transpose:y:0*
T0*
_output_shapes
:{
1sequential_17/simple_rnn_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_17/simple_rnn_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_17/simple_rnn_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_17/simple_rnn_40/strided_slice_1StridedSlice,sequential_17/simple_rnn_40/Shape_1:output:0:sequential_17/simple_rnn_40/strided_slice_1/stack:output:0<sequential_17/simple_rnn_40/strided_slice_1/stack_1:output:0<sequential_17/simple_rnn_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskВ
7sequential_17/simple_rnn_40/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         И
)sequential_17/simple_rnn_40/TensorArrayV2TensorListReserve@sequential_17/simple_rnn_40/TensorArrayV2/element_shape:output:04sequential_17/simple_rnn_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥в
Qsequential_17/simple_rnn_40/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┤
Csequential_17/simple_rnn_40/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_17/simple_rnn_40/transpose:y:0Zsequential_17/simple_rnn_40/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥{
1sequential_17/simple_rnn_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_17/simple_rnn_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_17/simple_rnn_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
+sequential_17/simple_rnn_40/strided_slice_2StridedSlice)sequential_17/simple_rnn_40/transpose:y:0:sequential_17/simple_rnn_40/strided_slice_2/stack:output:0<sequential_17/simple_rnn_40/strided_slice_2/stack_1:output:0<sequential_17/simple_rnn_40/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╥
Dsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOpMsequential_17_simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0ї
5sequential_17/simple_rnn_40/simple_rnn_cell_40/MatMulMatMul4sequential_17/simple_rnn_40/strided_slice_2:output:0Lsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╨
Esequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOpNsequential_17_simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0Г
6sequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAddBiasAdd?sequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul:product:0Msequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╓
Fsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOpOsequential_17_simple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0я
7sequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1MatMul*sequential_17/simple_rnn_40/zeros:output:0Nsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nё
2sequential_17/simple_rnn_40/simple_rnn_cell_40/addAddV2?sequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd:output:0Asequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nе
3sequential_17/simple_rnn_40/simple_rnn_cell_40/TanhTanh6sequential_17/simple_rnn_40/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nК
9sequential_17/simple_rnn_40/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   М
+sequential_17/simple_rnn_40/TensorArrayV2_1TensorListReserveBsequential_17/simple_rnn_40/TensorArrayV2_1/element_shape:output:04sequential_17/simple_rnn_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥b
 sequential_17/simple_rnn_40/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_17/simple_rnn_40/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         p
.sequential_17/simple_rnn_40/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┼
!sequential_17/simple_rnn_40/whileWhile7sequential_17/simple_rnn_40/while/loop_counter:output:0=sequential_17/simple_rnn_40/while/maximum_iterations:output:0)sequential_17/simple_rnn_40/time:output:04sequential_17/simple_rnn_40/TensorArrayV2_1:handle:0*sequential_17/simple_rnn_40/zeros:output:04sequential_17/simple_rnn_40/strided_slice_1:output:0Ssequential_17/simple_rnn_40/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_17_simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resourceNsequential_17_simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resourceOsequential_17_simple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *8
body0R.
,sequential_17_simple_rnn_40_while_body_62022*8
cond0R.
,sequential_17_simple_rnn_40_while_cond_62021*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Э
Lsequential_17/simple_rnn_40/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   Ц
>sequential_17/simple_rnn_40/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_17/simple_rnn_40/while:output:3Usequential_17/simple_rnn_40/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0Д
1sequential_17/simple_rnn_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         }
3sequential_17/simple_rnn_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_17/simple_rnn_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
+sequential_17/simple_rnn_40/strided_slice_3StridedSliceGsequential_17/simple_rnn_40/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_17/simple_rnn_40/strided_slice_3/stack:output:0<sequential_17/simple_rnn_40/strided_slice_3/stack_1:output:0<sequential_17/simple_rnn_40/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskБ
,sequential_17/simple_rnn_40/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ъ
'sequential_17/simple_rnn_40/transpose_1	TransposeGsequential_17/simple_rnn_40/TensorArrayV2Stack/TensorListStack:tensor:05sequential_17/simple_rnn_40/transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nР
!sequential_17/dropout_40/IdentityIdentity+sequential_17/simple_rnn_40/transpose_1:y:0*
T0*+
_output_shapes
:         <n{
!sequential_17/simple_rnn_41/ShapeShape*sequential_17/dropout_40/Identity:output:0*
T0*
_output_shapes
:y
/sequential_17/simple_rnn_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_17/simple_rnn_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_17/simple_rnn_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)sequential_17/simple_rnn_41/strided_sliceStridedSlice*sequential_17/simple_rnn_41/Shape:output:08sequential_17/simple_rnn_41/strided_slice/stack:output:0:sequential_17/simple_rnn_41/strided_slice/stack_1:output:0:sequential_17/simple_rnn_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_17/simple_rnn_41/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :n╟
(sequential_17/simple_rnn_41/zeros/packedPack2sequential_17/simple_rnn_41/strided_slice:output:03sequential_17/simple_rnn_41/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_17/simple_rnn_41/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!sequential_17/simple_rnn_41/zerosFill1sequential_17/simple_rnn_41/zeros/packed:output:00sequential_17/simple_rnn_41/zeros/Const:output:0*
T0*'
_output_shapes
:         n
*sequential_17/simple_rnn_41/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╔
%sequential_17/simple_rnn_41/transpose	Transpose*sequential_17/dropout_40/Identity:output:03sequential_17/simple_rnn_41/transpose/perm:output:0*
T0*+
_output_shapes
:<         n|
#sequential_17/simple_rnn_41/Shape_1Shape)sequential_17/simple_rnn_41/transpose:y:0*
T0*
_output_shapes
:{
1sequential_17/simple_rnn_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_17/simple_rnn_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_17/simple_rnn_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_17/simple_rnn_41/strided_slice_1StridedSlice,sequential_17/simple_rnn_41/Shape_1:output:0:sequential_17/simple_rnn_41/strided_slice_1/stack:output:0<sequential_17/simple_rnn_41/strided_slice_1/stack_1:output:0<sequential_17/simple_rnn_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskВ
7sequential_17/simple_rnn_41/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         И
)sequential_17/simple_rnn_41/TensorArrayV2TensorListReserve@sequential_17/simple_rnn_41/TensorArrayV2/element_shape:output:04sequential_17/simple_rnn_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥в
Qsequential_17/simple_rnn_41/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┤
Csequential_17/simple_rnn_41/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_17/simple_rnn_41/transpose:y:0Zsequential_17/simple_rnn_41/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥{
1sequential_17/simple_rnn_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_17/simple_rnn_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_17/simple_rnn_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
+sequential_17/simple_rnn_41/strided_slice_2StridedSlice)sequential_17/simple_rnn_41/transpose:y:0:sequential_17/simple_rnn_41/strided_slice_2/stack:output:0<sequential_17/simple_rnn_41/strided_slice_2/stack_1:output:0<sequential_17/simple_rnn_41/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_mask╥
Dsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOpMsequential_17_simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0ї
5sequential_17/simple_rnn_41/simple_rnn_cell_41/MatMulMatMul4sequential_17/simple_rnn_41/strided_slice_2:output:0Lsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╨
Esequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOpNsequential_17_simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0Г
6sequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAddBiasAdd?sequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul:product:0Msequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╓
Fsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOpOsequential_17_simple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0я
7sequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1MatMul*sequential_17/simple_rnn_41/zeros:output:0Nsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nё
2sequential_17/simple_rnn_41/simple_rnn_cell_41/addAddV2?sequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd:output:0Asequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nе
3sequential_17/simple_rnn_41/simple_rnn_cell_41/TanhTanh6sequential_17/simple_rnn_41/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nК
9sequential_17/simple_rnn_41/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   М
+sequential_17/simple_rnn_41/TensorArrayV2_1TensorListReserveBsequential_17/simple_rnn_41/TensorArrayV2_1/element_shape:output:04sequential_17/simple_rnn_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥b
 sequential_17/simple_rnn_41/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_17/simple_rnn_41/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         p
.sequential_17/simple_rnn_41/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┼
!sequential_17/simple_rnn_41/whileWhile7sequential_17/simple_rnn_41/while/loop_counter:output:0=sequential_17/simple_rnn_41/while/maximum_iterations:output:0)sequential_17/simple_rnn_41/time:output:04sequential_17/simple_rnn_41/TensorArrayV2_1:handle:0*sequential_17/simple_rnn_41/zeros:output:04sequential_17/simple_rnn_41/strided_slice_1:output:0Ssequential_17/simple_rnn_41/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_17_simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resourceNsequential_17_simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resourceOsequential_17_simple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *8
body0R.
,sequential_17_simple_rnn_41_while_body_62127*8
cond0R.
,sequential_17_simple_rnn_41_while_cond_62126*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Э
Lsequential_17/simple_rnn_41/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   Ц
>sequential_17/simple_rnn_41/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_17/simple_rnn_41/while:output:3Usequential_17/simple_rnn_41/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0Д
1sequential_17/simple_rnn_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         }
3sequential_17/simple_rnn_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_17/simple_rnn_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
+sequential_17/simple_rnn_41/strided_slice_3StridedSliceGsequential_17/simple_rnn_41/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_17/simple_rnn_41/strided_slice_3/stack:output:0<sequential_17/simple_rnn_41/strided_slice_3/stack_1:output:0<sequential_17/simple_rnn_41/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskБ
,sequential_17/simple_rnn_41/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ъ
'sequential_17/simple_rnn_41/transpose_1	TransposeGsequential_17/simple_rnn_41/TensorArrayV2Stack/TensorListStack:tensor:05sequential_17/simple_rnn_41/transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nХ
!sequential_17/dropout_41/IdentityIdentity4sequential_17/simple_rnn_41/strided_slice_3:output:0*
T0*'
_output_shapes
:         nв
,sequential_17/dense_17/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_17_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0╗
sequential_17/dense_17/MatMulMatMul*sequential_17/dropout_41/Identity:output:04sequential_17/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_17/dense_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_17/dense_17/BiasAddBiasAdd'sequential_17/dense_17/MatMul:product:05sequential_17/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_17/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Э
NoOpNoOp.^sequential_17/dense_17/BiasAdd/ReadVariableOp-^sequential_17/dense_17/MatMul/ReadVariableOpF^sequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpE^sequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpG^sequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp"^sequential_17/simple_rnn_40/whileF^sequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpE^sequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpG^sequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp"^sequential_17/simple_rnn_41/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2^
-sequential_17/dense_17/BiasAdd/ReadVariableOp-sequential_17/dense_17/BiasAdd/ReadVariableOp2\
,sequential_17/dense_17/MatMul/ReadVariableOp,sequential_17/dense_17/MatMul/ReadVariableOp2О
Esequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpEsequential_17/simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp2М
Dsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpDsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp2Р
Fsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpFsequential_17/simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp2F
!sequential_17/simple_rnn_40/while!sequential_17/simple_rnn_40/while2О
Esequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpEsequential_17/simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp2М
Dsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpDsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp2Р
Fsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpFsequential_17/simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp2F
!sequential_17/simple_rnn_41/while!sequential_17/simple_rnn_41/while:` \
+
_output_shapes
:         <
-
_user_specified_namesimple_rnn_40_input
╫	
└
-__inference_sequential_17_layer_call_fn_63575

inputs
unknown:n
	unknown_0:n
	unknown_1:nn
	unknown_2:nn
	unknown_3:n
	unknown_4:nn
	unknown_5:n
	unknown_6:
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_63052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
ш,
╨
while_body_64244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nH
:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_40_matmul_readvariableop_resource:nF
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_40/MatMul/ReadVariableOpв0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0┼
while/simple_rnn_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_40/BiasAddBiasAdd)while/simple_rnn_cell_40/MatMul:product:07while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_40/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_40/addAddV2)while/simple_rnn_cell_40/BiasAdd:output:0+while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_40/TanhTanh while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_40/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_40/MatMul/ReadVariableOp1^while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_40_matmul_readvariableop_resource9while_simple_rnn_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_40/MatMul/ReadVariableOp.while/simple_rnn_cell_40/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╒
е
while_cond_64243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64243___redundant_placeholder03
/while_while_cond_64243___redundant_placeholder13
/while_while_cond_64243___redundant_placeholder23
/while_while_cond_64243___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╔Ы
Х	
H__inference_sequential_17_layer_call_and_return_conditional_losses_63816

inputsQ
?simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource:nN
@simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resource:nS
Asimple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnQ
?simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource:nnN
@simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resource:nS
Asimple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource:nn9
'dense_17_matmul_readvariableop_resource:n6
(dense_17_biasadd_readvariableop_resource:
identityИвdense_17/BiasAdd/ReadVariableOpвdense_17/MatMul/ReadVariableOpв7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpв6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpв8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpвsimple_rnn_40/whileв7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpв6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpв8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpвsimple_rnn_41/whileI
simple_rnn_40/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
simple_rnn_40/strided_sliceStridedSlicesimple_rnn_40/Shape:output:0*simple_rnn_40/strided_slice/stack:output:0,simple_rnn_40/strided_slice/stack_1:output:0,simple_rnn_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_40/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :nЭ
simple_rnn_40/zeros/packedPack$simple_rnn_40/strided_slice:output:0%simple_rnn_40/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_40/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
simple_rnn_40/zerosFill#simple_rnn_40/zeros/packed:output:0"simple_rnn_40/zeros/Const:output:0*
T0*'
_output_shapes
:         nq
simple_rnn_40/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
simple_rnn_40/transpose	Transposeinputs%simple_rnn_40/transpose/perm:output:0*
T0*+
_output_shapes
:<         `
simple_rnn_40/Shape_1Shapesimple_rnn_40/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
simple_rnn_40/strided_slice_1StridedSlicesimple_rnn_40/Shape_1:output:0,simple_rnn_40/strided_slice_1/stack:output:0.simple_rnn_40/strided_slice_1/stack_1:output:0.simple_rnn_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_40/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▐
simple_rnn_40/TensorArrayV2TensorListReserve2simple_rnn_40/TensorArrayV2/element_shape:output:0&simple_rnn_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ф
Csimple_rnn_40/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
5simple_rnn_40/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_40/transpose:y:0Lsimple_rnn_40/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥m
#simple_rnn_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
simple_rnn_40/strided_slice_2StridedSlicesimple_rnn_40/transpose:y:0,simple_rnn_40/strided_slice_2/stack:output:0.simple_rnn_40/strided_slice_2/stack_1:output:0.simple_rnn_40/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╢
6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp?simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0╦
'simple_rnn_40/simple_rnn_cell_40/MatMulMatMul&simple_rnn_40/strided_slice_2:output:0>simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┤
7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0┘
(simple_rnn_40/simple_rnn_cell_40/BiasAddBiasAdd1simple_rnn_40/simple_rnn_cell_40/MatMul:product:0?simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n║
8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0┼
)simple_rnn_40/simple_rnn_cell_40/MatMul_1MatMulsimple_rnn_40/zeros:output:0@simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╟
$simple_rnn_40/simple_rnn_cell_40/addAddV21simple_rnn_40/simple_rnn_cell_40/BiasAdd:output:03simple_rnn_40/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nЙ
%simple_rnn_40/simple_rnn_cell_40/TanhTanh(simple_rnn_40/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n|
+simple_rnn_40/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   т
simple_rnn_40/TensorArrayV2_1TensorListReserve4simple_rnn_40/TensorArrayV2_1/element_shape:output:0&simple_rnn_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥T
simple_rnn_40/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_40/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_40/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
simple_rnn_40/whileWhile)simple_rnn_40/while/loop_counter:output:0/simple_rnn_40/while/maximum_iterations:output:0simple_rnn_40/time:output:0&simple_rnn_40/TensorArrayV2_1:handle:0simple_rnn_40/zeros:output:0&simple_rnn_40/strided_slice_1:output:0Esimple_rnn_40/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_40_simple_rnn_cell_40_matmul_readvariableop_resource@simple_rnn_40_simple_rnn_cell_40_biasadd_readvariableop_resourceAsimple_rnn_40_simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_40_while_body_63638**
cond"R 
simple_rnn_40_while_cond_63637*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations П
>simple_rnn_40/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ь
0simple_rnn_40/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_40/while:output:3Gsimple_rnn_40/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0v
#simple_rnn_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
simple_rnn_40/strided_slice_3StridedSlice9simple_rnn_40/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_40/strided_slice_3/stack:output:0.simple_rnn_40/strided_slice_3/stack_1:output:0.simple_rnn_40/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_masks
simple_rnn_40/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
simple_rnn_40/transpose_1	Transpose9simple_rnn_40/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_40/transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nt
dropout_40/IdentityIdentitysimple_rnn_40/transpose_1:y:0*
T0*+
_output_shapes
:         <n_
simple_rnn_41/ShapeShapedropout_40/Identity:output:0*
T0*
_output_shapes
:k
!simple_rnn_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
simple_rnn_41/strided_sliceStridedSlicesimple_rnn_41/Shape:output:0*simple_rnn_41/strided_slice/stack:output:0,simple_rnn_41/strided_slice/stack_1:output:0,simple_rnn_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_41/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :nЭ
simple_rnn_41/zeros/packedPack$simple_rnn_41/strided_slice:output:0%simple_rnn_41/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_41/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
simple_rnn_41/zerosFill#simple_rnn_41/zeros/packed:output:0"simple_rnn_41/zeros/Const:output:0*
T0*'
_output_shapes
:         nq
simple_rnn_41/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
simple_rnn_41/transpose	Transposedropout_40/Identity:output:0%simple_rnn_41/transpose/perm:output:0*
T0*+
_output_shapes
:<         n`
simple_rnn_41/Shape_1Shapesimple_rnn_41/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
simple_rnn_41/strided_slice_1StridedSlicesimple_rnn_41/Shape_1:output:0,simple_rnn_41/strided_slice_1/stack:output:0.simple_rnn_41/strided_slice_1/stack_1:output:0.simple_rnn_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_41/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▐
simple_rnn_41/TensorArrayV2TensorListReserve2simple_rnn_41/TensorArrayV2/element_shape:output:0&simple_rnn_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ф
Csimple_rnn_41/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   К
5simple_rnn_41/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_41/transpose:y:0Lsimple_rnn_41/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥m
#simple_rnn_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
simple_rnn_41/strided_slice_2StridedSlicesimple_rnn_41/transpose:y:0,simple_rnn_41/strided_slice_2/stack:output:0.simple_rnn_41/strided_slice_2/stack_1:output:0.simple_rnn_41/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_mask╢
6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp?simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0╦
'simple_rnn_41/simple_rnn_cell_41/MatMulMatMul&simple_rnn_41/strided_slice_2:output:0>simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┤
7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0┘
(simple_rnn_41/simple_rnn_cell_41/BiasAddBiasAdd1simple_rnn_41/simple_rnn_cell_41/MatMul:product:0?simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n║
8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0┼
)simple_rnn_41/simple_rnn_cell_41/MatMul_1MatMulsimple_rnn_41/zeros:output:0@simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╟
$simple_rnn_41/simple_rnn_cell_41/addAddV21simple_rnn_41/simple_rnn_cell_41/BiasAdd:output:03simple_rnn_41/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nЙ
%simple_rnn_41/simple_rnn_cell_41/TanhTanh(simple_rnn_41/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n|
+simple_rnn_41/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   т
simple_rnn_41/TensorArrayV2_1TensorListReserve4simple_rnn_41/TensorArrayV2_1/element_shape:output:0&simple_rnn_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥T
simple_rnn_41/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_41/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 simple_rnn_41/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : П
simple_rnn_41/whileWhile)simple_rnn_41/while/loop_counter:output:0/simple_rnn_41/while/maximum_iterations:output:0simple_rnn_41/time:output:0&simple_rnn_41/TensorArrayV2_1:handle:0simple_rnn_41/zeros:output:0&simple_rnn_41/strided_slice_1:output:0Esimple_rnn_41/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_41_simple_rnn_cell_41_matmul_readvariableop_resource@simple_rnn_41_simple_rnn_cell_41_biasadd_readvariableop_resourceAsimple_rnn_41_simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_41_while_body_63743**
cond"R 
simple_rnn_41_while_cond_63742*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations П
>simple_rnn_41/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ь
0simple_rnn_41/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_41/while:output:3Gsimple_rnn_41/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0v
#simple_rnn_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%simple_rnn_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
simple_rnn_41/strided_slice_3StridedSlice9simple_rnn_41/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_41/strided_slice_3/stack:output:0.simple_rnn_41/strided_slice_3/stack_1:output:0.simple_rnn_41/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_masks
simple_rnn_41/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
simple_rnn_41/transpose_1	Transpose9simple_rnn_41/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_41/transpose_1/perm:output:0*
T0*+
_output_shapes
:         <ny
dropout_41/IdentityIdentity&simple_rnn_41/strided_slice_3:output:0*
T0*'
_output_shapes
:         nЖ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0С
dense_17/MatMulMatMuldropout_41/Identity:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp8^simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp7^simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp9^simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp^simple_rnn_40/while8^simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp7^simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp9^simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp^simple_rnn_41/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2r
7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp7simple_rnn_40/simple_rnn_cell_40/BiasAdd/ReadVariableOp2p
6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp6simple_rnn_40/simple_rnn_cell_40/MatMul/ReadVariableOp2t
8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp8simple_rnn_40/simple_rnn_cell_40/MatMul_1/ReadVariableOp2*
simple_rnn_40/whilesimple_rnn_40/while2r
7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp7simple_rnn_41/simple_rnn_cell_41/BiasAdd/ReadVariableOp2p
6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp6simple_rnn_41/simple_rnn_cell_41/MatMul/ReadVariableOp2t
8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp8simple_rnn_41/simple_rnn_cell_41/MatMul_1/ReadVariableOp2*
simple_rnn_41/whilesimple_rnn_41/while:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
В>
├
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64202
inputs_0C
1simple_rnn_cell_40_matmul_readvariableop_resource:n@
2simple_rnn_cell_40_biasadd_readvariableop_resource:nE
3simple_rnn_cell_40_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_40/BiasAdd/ReadVariableOpв(simple_rnn_cell_40/MatMul/ReadVariableOpв*simple_rnn_cell_40/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0б
simple_rnn_cell_40/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_40/BiasAddBiasAdd#simple_rnn_cell_40/MatMul:product:01simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_40/MatMul_1MatMulzeros:output:02simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_40/addAddV2#simple_rnn_cell_40/BiasAdd:output:0%simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_40/TanhTanhsimple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_40_matmul_readvariableop_resource2simple_rnn_cell_40_biasadd_readvariableop_resource3simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64136*
condR
while_cond_64135*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  nk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  n╥
NoOpNoOp*^simple_rnn_cell_40/BiasAdd/ReadVariableOp)^simple_rnn_cell_40/MatMul/ReadVariableOp+^simple_rnn_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2V
)simple_rnn_cell_40/BiasAdd/ReadVariableOp)simple_rnn_cell_40/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_40/MatMul/ReadVariableOp(simple_rnn_cell_40/MatMul/ReadVariableOp2X
*simple_rnn_cell_40/MatMul_1/ReadVariableOp*simple_rnn_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Г
ъ
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_65199

inputs
states_00
matmul_readvariableop_resource:nn-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nn*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         n:         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs:QM
'
_output_shapes
:         n
"
_user_specified_name
states/0
Ф!
╤
while_body_62420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_40_62442_0:n.
 while_simple_rnn_cell_40_62444_0:n2
 while_simple_rnn_cell_40_62446_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_40_62442:n,
while_simple_rnn_cell_40_62444:n0
while_simple_rnn_cell_40_62446:nnИв0while/simple_rnn_cell_40/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
0while/simple_rnn_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_40_62442_0 while_simple_rnn_cell_40_62444_0 while_simple_rnn_cell_40_62446_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62368т
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_40/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥Ц
while/Identity_4Identity9while/simple_rnn_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         n

while/NoOpNoOp1^while/simple_rnn_cell_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_40_62442 while_simple_rnn_cell_40_62442_0"B
while_simple_rnn_cell_40_62444 while_simple_rnn_cell_40_62444_0"B
while_simple_rnn_cell_40_62446 while_simple_rnn_cell_40_62446_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2d
0while/simple_rnn_cell_40/StatefulPartitionedCall0while/simple_rnn_cell_40/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
ї9
Ї
simple_rnn_41_while_body_639708
4simple_rnn_41_while_simple_rnn_41_while_loop_counter>
:simple_rnn_41_while_simple_rnn_41_while_maximum_iterations#
simple_rnn_41_while_placeholder%
!simple_rnn_41_while_placeholder_1%
!simple_rnn_41_while_placeholder_27
3simple_rnn_41_while_simple_rnn_41_strided_slice_1_0s
osimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnV
Hsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:n[
Isimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn 
simple_rnn_41_while_identity"
simple_rnn_41_while_identity_1"
simple_rnn_41_while_identity_2"
simple_rnn_41_while_identity_3"
simple_rnn_41_while_identity_45
1simple_rnn_41_while_simple_rnn_41_strided_slice_1q
msimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource:nnT
Fsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource:nY
Gsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpв>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpЦ
Esimple_rnn_41/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ь
7simple_rnn_41/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_41_while_placeholderNsimple_rnn_41/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0─
<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0я
-simple_rnn_41/while/simple_rnn_cell_41/MatMulMatMul>simple_rnn_41/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┬
=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0ы
.simple_rnn_41/while/simple_rnn_cell_41/BiasAddBiasAdd7simple_rnn_41/while/simple_rnn_cell_41/MatMul:product:0Esimple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╚
>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0╓
/simple_rnn_41/while/simple_rnn_cell_41/MatMul_1MatMul!simple_rnn_41_while_placeholder_2Fsimple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┘
*simple_rnn_41/while/simple_rnn_cell_41/addAddV27simple_rnn_41/while/simple_rnn_cell_41/BiasAdd:output:09simple_rnn_41/while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nХ
+simple_rnn_41/while/simple_rnn_cell_41/TanhTanh.simple_rnn_41/while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nВ
8simple_rnn_41/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_41_while_placeholder_1simple_rnn_41_while_placeholder/simple_rnn_41/while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥[
simple_rnn_41/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
simple_rnn_41/while/addAddV2simple_rnn_41_while_placeholder"simple_rnn_41/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_41/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
simple_rnn_41/while/add_1AddV24simple_rnn_41_while_simple_rnn_41_while_loop_counter$simple_rnn_41/while/add_1/y:output:0*
T0*
_output_shapes
: Г
simple_rnn_41/while/IdentityIdentitysimple_rnn_41/while/add_1:z:0^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: в
simple_rnn_41/while/Identity_1Identity:simple_rnn_41_while_simple_rnn_41_while_maximum_iterations^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: Г
simple_rnn_41/while/Identity_2Identitysimple_rnn_41/while/add:z:0^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: ├
simple_rnn_41/while/Identity_3IdentityHsimple_rnn_41/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_41/while/NoOp*
T0*
_output_shapes
: :щш╥и
simple_rnn_41/while/Identity_4Identity/simple_rnn_41/while/simple_rnn_cell_41/Tanh:y:0^simple_rnn_41/while/NoOp*
T0*'
_output_shapes
:         nЪ
simple_rnn_41/while/NoOpNoOp>^simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp=^simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp?^simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_41_while_identity%simple_rnn_41/while/Identity:output:0"I
simple_rnn_41_while_identity_1'simple_rnn_41/while/Identity_1:output:0"I
simple_rnn_41_while_identity_2'simple_rnn_41/while/Identity_2:output:0"I
simple_rnn_41_while_identity_3'simple_rnn_41/while/Identity_3:output:0"I
simple_rnn_41_while_identity_4'simple_rnn_41/while/Identity_4:output:0"h
1simple_rnn_41_while_simple_rnn_41_strided_slice_13simple_rnn_41_while_simple_rnn_41_strided_slice_1_0"Т
Fsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resourceHsimple_rnn_41_while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"Ф
Gsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resourceIsimple_rnn_41_while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"Р
Esimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resourceGsimple_rnn_41_while_simple_rnn_cell_41_matmul_readvariableop_resource_0"р
msimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensorosimple_rnn_41_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_41_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2~
=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp=simple_rnn_41/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2|
<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp<simple_rnn_41/while/simple_rnn_cell_41/MatMul/ReadVariableOp2А
>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp>simple_rnn_41/while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╠	
├
#__inference_signature_wrapper_63554
simple_rnn_40_input
unknown:n
	unknown_0:n
	unknown_1:nn
	unknown_2:nn
	unknown_3:n
	unknown_4:nn
	unknown_5:n
	unknown_6:
identityИвStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_40_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *)
f$R"
 __inference__wrapped_model_62200o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:         <
-
_user_specified_namesimple_rnn_40_input
╞	
Ї
C__inference_dense_17_layer_call_and_return_conditional_losses_65075

inputs0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
╒
е
while_cond_62552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62552___redundant_placeholder03
/while_while_cond_62552___redundant_placeholder13
/while_while_cond_62552___redundant_placeholder23
/while_while_cond_62552___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
Х4
Ь
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62324

inputs*
simple_rnn_cell_40_62249:n&
simple_rnn_cell_40_62251:n*
simple_rnn_cell_40_62253:nn
identityИв*simple_rnn_cell_40/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskэ
*simple_rnn_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_40_62249simple_rnn_cell_40_62251simple_rnn_cell_40_62253*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62248n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_40_62249simple_rnn_cell_40_62251simple_rnn_cell_40_62253*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_62261*
condR
while_cond_62260*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  nk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  n{
NoOpNoOp+^simple_rnn_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2X
*simple_rnn_cell_40/StatefulPartitionedCall*simple_rnn_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╪
c
E__inference_dropout_41_layer_call_and_return_conditional_losses_65044

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         n[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         n"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         n:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
┼
Х
(__inference_dense_17_layer_call_fn_65065

inputs
unknown:n
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_63045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         n: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
╨

п
simple_rnn_40_while_cond_638578
4simple_rnn_40_while_simple_rnn_40_while_loop_counter>
:simple_rnn_40_while_simple_rnn_40_while_maximum_iterations#
simple_rnn_40_while_placeholder%
!simple_rnn_40_while_placeholder_1%
!simple_rnn_40_while_placeholder_2:
6simple_rnn_40_while_less_simple_rnn_40_strided_slice_1O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63857___redundant_placeholder0O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63857___redundant_placeholder1O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63857___redundant_placeholder2O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63857___redundant_placeholder3 
simple_rnn_40_while_identity
Ъ
simple_rnn_40/while/LessLesssimple_rnn_40_while_placeholder6simple_rnn_40_while_less_simple_rnn_40_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_40/while/IdentityIdentitysimple_rnn_40/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_40_while_identity%simple_rnn_40/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╨

п
simple_rnn_40_while_cond_636378
4simple_rnn_40_while_simple_rnn_40_while_loop_counter>
:simple_rnn_40_while_simple_rnn_40_while_maximum_iterations#
simple_rnn_40_while_placeholder%
!simple_rnn_40_while_placeholder_1%
!simple_rnn_40_while_placeholder_2:
6simple_rnn_40_while_less_simple_rnn_40_strided_slice_1O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63637___redundant_placeholder0O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63637___redundant_placeholder1O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63637___redundant_placeholder2O
Ksimple_rnn_40_while_simple_rnn_40_while_cond_63637___redundant_placeholder3 
simple_rnn_40_while_identity
Ъ
simple_rnn_40/while/LessLesssimple_rnn_40_while_placeholder6simple_rnn_40_while_less_simple_rnn_40_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_40/while/IdentityIdentitysimple_rnn_40/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_40_while_identity%simple_rnn_40/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
ш
c
E__inference_dropout_40_layer_call_and_return_conditional_losses_64541

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         <n_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         <n"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         <n:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
Л
╖
-__inference_simple_rnn_40_layer_call_fn_64083

inputs
unknown:n
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62898s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
 	
d
E__inference_dropout_41_layer_call_and_return_conditional_losses_65056

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         nC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         n*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         no
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         ni
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         nY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         n"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         n:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
¤
ш
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62540

inputs

states0
matmul_readvariableop_resource:nn-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nn*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         n:         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs:OK
'
_output_shapes
:         n
 
_user_specified_namestates
╒
е
while_cond_63311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63311___redundant_placeholder03
/while_while_cond_63311___redundant_placeholder13
/while_while_cond_63311___redundant_placeholder23
/while_while_cond_63311___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
¤
ш
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62248

inputs

states0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         n
 
_user_specified_namestates
╒
е
while_cond_64746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64746___redundant_placeholder03
/while_while_cond_64746___redundant_placeholder13
/while_while_cond_64746___redundant_placeholder23
/while_while_cond_64746___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
ш,
╨
while_body_64639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnH
:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_41_matmul_readvariableop_resource:nnF
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_41/MatMul/ReadVariableOpв0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
.while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0┼
while/simple_rnn_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_41/BiasAddBiasAdd)while/simple_rnn_cell_41/MatMul:product:07while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_41/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_41/addAddV2)while/simple_rnn_cell_41/BiasAdd:output:0+while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_41/TanhTanh while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_41/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_41/MatMul/ReadVariableOp1^while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_41_matmul_readvariableop_resource9while_simple_rnn_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_41/MatMul/ReadVariableOp.while/simple_rnn_cell_41/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╒
е
while_cond_64135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64135___redundant_placeholder03
/while_while_cond_64135___redundant_placeholder13
/while_while_cond_64135___redundant_placeholder23
/while_while_cond_64135___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╨

п
simple_rnn_41_while_cond_639698
4simple_rnn_41_while_simple_rnn_41_while_loop_counter>
:simple_rnn_41_while_simple_rnn_41_while_maximum_iterations#
simple_rnn_41_while_placeholder%
!simple_rnn_41_while_placeholder_1%
!simple_rnn_41_while_placeholder_2:
6simple_rnn_41_while_less_simple_rnn_41_strided_slice_1O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63969___redundant_placeholder0O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63969___redundant_placeholder1O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63969___redundant_placeholder2O
Ksimple_rnn_41_while_simple_rnn_41_while_cond_63969___redundant_placeholder3 
simple_rnn_41_while_identity
Ъ
simple_rnn_41/while/LessLesssimple_rnn_41_while_placeholder6simple_rnn_41_while_less_simple_rnn_41_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_41/while/IdentityIdentitysimple_rnn_41/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_41_while_identity%simple_rnn_41/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
ш,
╨
while_body_64136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nH
:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_40_matmul_readvariableop_resource:nF
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_40/MatMul/ReadVariableOpв0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0┼
while/simple_rnn_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_40/BiasAddBiasAdd)while/simple_rnn_cell_40/MatMul:product:07while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_40/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_40/addAddV2)while/simple_rnn_cell_40/BiasAdd:output:0+while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_40/TanhTanh while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_40/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_40/MatMul/ReadVariableOp1^while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_40_matmul_readvariableop_resource9while_simple_rnn_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_40/MatMul/ReadVariableOp.while/simple_rnn_cell_40/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╪
c
E__inference_dropout_41_layer_call_and_return_conditional_losses_63033

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         n[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         n"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         n:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
╒
е
while_cond_64962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64962___redundant_placeholder03
/while_while_cond_64962___redundant_placeholder13
/while_while_cond_64962___redundant_placeholder23
/while_while_cond_64962___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
╡
╣
-__inference_simple_rnn_40_layer_call_fn_64072
inputs_0
unknown:n
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62483|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
■=
├
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64705
inputs_0C
1simple_rnn_cell_41_matmul_readvariableop_resource:nn@
2simple_rnn_cell_41_biasadd_readvariableop_resource:nE
3simple_rnn_cell_41_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_41/BiasAdd/ReadVariableOpв(simple_rnn_cell_41/MatMul/ReadVariableOpв*simple_rnn_cell_41/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskЪ
(simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0б
simple_rnn_cell_41/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_41/BiasAddBiasAdd#simple_rnn_cell_41/MatMul:product:01simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_41/MatMul_1MatMulzeros:output:02simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_41/addAddV2#simple_rnn_cell_41/BiasAdd:output:0%simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_41/TanhTanhsimple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_41_matmul_readvariableop_resource2simple_rnn_cell_41_biasadd_readvariableop_resource3simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64639*
condR
while_cond_64638*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n╥
NoOpNoOp*^simple_rnn_cell_41/BiasAdd/ReadVariableOp)^simple_rnn_cell_41/MatMul/ReadVariableOp+^simple_rnn_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  n: : : 2V
)simple_rnn_cell_41/BiasAdd/ReadVariableOp)simple_rnn_cell_41/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_41/MatMul/ReadVariableOp(simple_rnn_cell_41/MatMul/ReadVariableOp2X
*simple_rnn_cell_41/MatMul_1/ReadVariableOp*simple_rnn_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  n
"
_user_specified_name
inputs/0
ш,
╨
while_body_64352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nH
:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_40_matmul_readvariableop_resource:nF
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_40/MatMul/ReadVariableOpв0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0┼
while/simple_rnn_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_40/BiasAddBiasAdd)while/simple_rnn_cell_40/MatMul:product:07while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_40/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_40/addAddV2)while/simple_rnn_cell_40/BiasAdd:output:0+while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_40/TanhTanh while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_40/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_40/MatMul/ReadVariableOp1^while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_40_matmul_readvariableop_resource9while_simple_rnn_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_40/MatMul/ReadVariableOp.while/simple_rnn_cell_40/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
Ф!
╤
while_body_62553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_41_62575_0:nn.
 while_simple_rnn_cell_41_62577_0:n2
 while_simple_rnn_cell_41_62579_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_41_62575:nn,
while_simple_rnn_cell_41_62577:n0
while_simple_rnn_cell_41_62579:nnИв0while/simple_rnn_cell_41/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
0while/simple_rnn_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_41_62575_0 while_simple_rnn_cell_41_62577_0 while_simple_rnn_cell_41_62579_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62540т
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_41/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥Ц
while/Identity_4Identity9while/simple_rnn_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         n

while/NoOpNoOp1^while/simple_rnn_cell_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_41_62575 while_simple_rnn_cell_41_62575_0"B
while_simple_rnn_cell_41_62577 while_simple_rnn_cell_41_62577_0"B
while_simple_rnn_cell_41_62579 while_simple_rnn_cell_41_62579_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2d
0while/simple_rnn_cell_41/StatefulPartitionedCall0while/simple_rnn_cell_41/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
─=
┴
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_63378

inputsC
1simple_rnn_cell_40_matmul_readvariableop_resource:n@
2simple_rnn_cell_40_biasadd_readvariableop_resource:nE
3simple_rnn_cell_40_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_40/BiasAdd/ReadVariableOpв(simple_rnn_cell_40/MatMul/ReadVariableOpв*simple_rnn_cell_40/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0б
simple_rnn_cell_40/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_40/BiasAddBiasAdd#simple_rnn_cell_40/MatMul:product:01simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_40/MatMul_1MatMulzeros:output:02simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_40/addAddV2#simple_rnn_cell_40/BiasAdd:output:0%simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_40/TanhTanhsimple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_40_matmul_readvariableop_resource2simple_rnn_cell_40_biasadd_readvariableop_resource3simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_63312*
condR
while_cond_63311*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         <n╥
NoOpNoOp*^simple_rnn_cell_40/BiasAdd/ReadVariableOp)^simple_rnn_cell_40/MatMul/ReadVariableOp+^simple_rnn_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <: : : 2V
)simple_rnn_cell_40/BiasAdd/ReadVariableOp)simple_rnn_cell_40/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_40/MatMul/ReadVariableOp(simple_rnn_cell_40/MatMul/ReadVariableOp2X
*simple_rnn_cell_40/MatMul_1/ReadVariableOp*simple_rnn_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
Г
╖
-__inference_simple_rnn_41_layer_call_fn_64597

inputs
unknown:nn
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63225o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
ш
c
E__inference_dropout_40_layer_call_and_return_conditional_losses_62911

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         <n_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         <n"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         <n:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
ш,
╨
while_body_63159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnH
:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_41_matmul_readvariableop_resource:nnF
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_41/MatMul/ReadVariableOpв0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
.while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0┼
while/simple_rnn_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_41/BiasAddBiasAdd)while/simple_rnn_cell_41/MatMul:product:07while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_41/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_41/addAddV2)while/simple_rnn_cell_41/BiasAdd:output:0+while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_41/TanhTanh while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_41/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_41/MatMul/ReadVariableOp1^while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_41_matmul_readvariableop_resource9while_simple_rnn_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_41/MatMul/ReadVariableOp.while/simple_rnn_cell_41/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
Ф!
╤
while_body_62712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_41_62734_0:nn.
 while_simple_rnn_cell_41_62736_0:n2
 while_simple_rnn_cell_41_62738_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_41_62734:nn,
while_simple_rnn_cell_41_62736:n0
while_simple_rnn_cell_41_62738:nnИв0while/simple_rnn_cell_41/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
0while/simple_rnn_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_41_62734_0 while_simple_rnn_cell_41_62736_0 while_simple_rnn_cell_41_62738_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62660т
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_41/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥Ц
while/Identity_4Identity9while/simple_rnn_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         n

while/NoOpNoOp1^while/simple_rnn_cell_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_41_62734 while_simple_rnn_cell_41_62734_0"B
while_simple_rnn_cell_41_62736 while_simple_rnn_cell_41_62736_0"B
while_simple_rnn_cell_41_62738 while_simple_rnn_cell_41_62738_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2d
0while/simple_rnn_cell_41/StatefulPartitionedCall0while/simple_rnn_cell_41/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
ш,
╨
while_body_64460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nH
:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_40_matmul_readvariableop_resource:nF
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_40/MatMul/ReadVariableOpв0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0┼
while/simple_rnn_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_40/BiasAddBiasAdd)while/simple_rnn_cell_40/MatMul:product:07while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_40/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_40/addAddV2)while/simple_rnn_cell_40/BiasAdd:output:0+while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_40/TanhTanh while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_40/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_40/MatMul/ReadVariableOp1^while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_40_biasadd_readvariableop_resource:while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_40_matmul_1_readvariableop_resource;while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_40_matmul_readvariableop_resource9while_simple_rnn_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_40/MatMul/ReadVariableOp.while/simple_rnn_cell_40/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp0while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╫	
└
-__inference_sequential_17_layer_call_fn_63596

inputs
unknown:n
	unknown_0:n
	unknown_1:nn
	unknown_2:nn
	unknown_3:n
	unknown_4:nn
	unknown_5:n
	unknown_6:
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_63435o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
─=
┴
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64526

inputsC
1simple_rnn_cell_40_matmul_readvariableop_resource:n@
2simple_rnn_cell_40_biasadd_readvariableop_resource:nE
3simple_rnn_cell_40_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_40/BiasAdd/ReadVariableOpв(simple_rnn_cell_40/MatMul/ReadVariableOpв*simple_rnn_cell_40/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_40_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0б
simple_rnn_cell_40/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_40_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_40/BiasAddBiasAdd#simple_rnn_cell_40/MatMul:product:01simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_40_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_40/MatMul_1MatMulzeros:output:02simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_40/addAddV2#simple_rnn_cell_40/BiasAdd:output:0%simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_40/TanhTanhsimple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_40_matmul_readvariableop_resource2simple_rnn_cell_40_biasadd_readvariableop_resource3simple_rnn_cell_40_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64460*
condR
while_cond_64459*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <nb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         <n╥
NoOpNoOp*^simple_rnn_cell_40/BiasAdd/ReadVariableOp)^simple_rnn_cell_40/MatMul/ReadVariableOp+^simple_rnn_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <: : : 2V
)simple_rnn_cell_40/BiasAdd/ReadVariableOp)simple_rnn_cell_40/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_40/MatMul/ReadVariableOp(simple_rnn_cell_40/MatMul/ReadVariableOp2X
*simple_rnn_cell_40/MatMul_1/ReadVariableOp*simple_rnn_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
Ы
╣
-__inference_simple_rnn_41_layer_call_fn_64575
inputs_0
unknown:nn
	unknown_0:n
	unknown_1:nn
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_62775o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  n
"
_user_specified_name
inputs/0
┬
№
H__inference_sequential_17_layer_call_and_return_conditional_losses_63052

inputs%
simple_rnn_40_62899:n!
simple_rnn_40_62901:n%
simple_rnn_40_62903:nn%
simple_rnn_41_63021:nn!
simple_rnn_41_63023:n%
simple_rnn_41_63025:nn 
dense_17_63046:n
dense_17_63048:
identityИв dense_17/StatefulPartitionedCallв%simple_rnn_40/StatefulPartitionedCallв%simple_rnn_41/StatefulPartitionedCallб
%simple_rnn_40/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_40_62899simple_rnn_40_62901simple_rnn_40_62903*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62898ь
dropout_40/PartitionedCallPartitionedCall.simple_rnn_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         <n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_62911║
%simple_rnn_41/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0simple_rnn_41_63021simple_rnn_41_63023simple_rnn_41_63025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_63020ш
dropout_41/PartitionedCallPartitionedCall.simple_rnn_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         n* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_63033П
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0dense_17_63046dense_17_63048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_63045x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╣
NoOpNoOp!^dense_17/StatefulPartitionedCall&^simple_rnn_40/StatefulPartitionedCall&^simple_rnn_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         <: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2N
%simple_rnn_40/StatefulPartitionedCall%simple_rnn_40/StatefulPartitionedCall2N
%simple_rnn_41/StatefulPartitionedCall%simple_rnn_41/StatefulPartitionedCall:S O
+
_output_shapes
:         <
 
_user_specified_nameinputs
С4
Ь
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_62775

inputs*
simple_rnn_cell_41_62700:nn&
simple_rnn_cell_41_62702:n*
simple_rnn_cell_41_62704:nn
identityИв*simple_rnn_cell_41/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskэ
*simple_rnn_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_41_62700simple_rnn_cell_41_62702simple_rnn_cell_41_62704*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_62660n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_41_62700simple_rnn_cell_41_62702simple_rnn_cell_41_62704*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_62712*
condR
while_cond_62711*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n{
NoOpNoOp+^simple_rnn_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  n: : : 2X
*simple_rnn_cell_41/StatefulPartitionedCall*simple_rnn_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  n
 
_user_specified_nameinputs
ш,
╨
while_body_64747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_41_matmul_readvariableop_resource_0:nnH
:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0:nM
;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_41_matmul_readvariableop_resource:nnF
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:nK
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource:nnИв/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpв.while/simple_rnn_cell_41/MatMul/ReadVariableOpв0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         n*
element_dtype0и
.while/simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_41_matmul_readvariableop_resource_0*
_output_shapes

:nn*
dtype0┼
while/simple_rnn_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nж
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0┴
 while/simple_rnn_cell_41/BiasAddBiasAdd)while/simple_rnn_cell_41/MatMul:product:07while/simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nм
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0м
!while/simple_rnn_cell_41/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nп
while/simple_rnn_cell_41/addAddV2)while/simple_rnn_cell_41/BiasAdd:output:0+while/simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         ny
while/simple_rnn_cell_41/TanhTanh while/simple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         n╩
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_41/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥~
while/Identity_4Identity!while/simple_rnn_cell_41/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         nт

while/NoOpNoOp0^while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_41/MatMul/ReadVariableOp1^while/simple_rnn_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_41_biasadd_readvariableop_resource:while_simple_rnn_cell_41_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_41_matmul_1_readvariableop_resource;while_simple_rnn_cell_41_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_41_matmul_readvariableop_resource9while_simple_rnn_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2b
/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp/while/simple_rnn_cell_41/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_41/MatMul/ReadVariableOp.while/simple_rnn_cell_41/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp0while/simple_rnn_cell_41/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╞	
Ї
C__inference_dense_17_layer_call_and_return_conditional_losses_63045

inputs0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         n
 
_user_specified_nameinputs
тВ
═
!__inference__traced_restore_65418
file_prefix2
 assignvariableop_dense_17_kernel:n.
 assignvariableop_1_dense_17_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: L
:assignvariableop_7_simple_rnn_40_simple_rnn_cell_40_kernel:nV
Dassignvariableop_8_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel:nnF
8assignvariableop_9_simple_rnn_40_simple_rnn_cell_40_bias:nM
;assignvariableop_10_simple_rnn_41_simple_rnn_cell_41_kernel:nnW
Eassignvariableop_11_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel:nnG
9assignvariableop_12_simple_rnn_41_simple_rnn_cell_41_bias:n#
assignvariableop_13_total: #
assignvariableop_14_count: <
*assignvariableop_15_adam_dense_17_kernel_m:n6
(assignvariableop_16_adam_dense_17_bias_m:T
Bassignvariableop_17_adam_simple_rnn_40_simple_rnn_cell_40_kernel_m:n^
Lassignvariableop_18_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_m:nnN
@assignvariableop_19_adam_simple_rnn_40_simple_rnn_cell_40_bias_m:nT
Bassignvariableop_20_adam_simple_rnn_41_simple_rnn_cell_41_kernel_m:nn^
Lassignvariableop_21_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_m:nnN
@assignvariableop_22_adam_simple_rnn_41_simple_rnn_cell_41_bias_m:n<
*assignvariableop_23_adam_dense_17_kernel_v:n6
(assignvariableop_24_adam_dense_17_bias_v:T
Bassignvariableop_25_adam_simple_rnn_40_simple_rnn_cell_40_kernel_v:n^
Lassignvariableop_26_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_v:nnN
@assignvariableop_27_adam_simple_rnn_40_simple_rnn_cell_40_bias_v:nT
Bassignvariableop_28_adam_simple_rnn_41_simple_rnn_cell_41_kernel_v:nn^
Lassignvariableop_29_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_v:nnN
@assignvariableop_30_adam_simple_rnn_41_simple_rnn_cell_41_bias_v:n
identity_32ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╕
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*▐
value╘B╤ B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH░
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┴
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_7AssignVariableOp:assignvariableop_7_simple_rnn_40_simple_rnn_cell_40_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_8AssignVariableOpDassignvariableop_8_simple_rnn_40_simple_rnn_cell_40_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_9AssignVariableOp8assignvariableop_9_simple_rnn_40_simple_rnn_cell_40_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_10AssignVariableOp;assignvariableop_10_simple_rnn_41_simple_rnn_cell_41_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_11AssignVariableOpEassignvariableop_11_simple_rnn_41_simple_rnn_cell_41_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_12AssignVariableOp9assignvariableop_12_simple_rnn_41_simple_rnn_cell_41_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_17_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_17_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_17AssignVariableOpBassignvariableop_17_adam_simple_rnn_40_simple_rnn_cell_40_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_18AssignVariableOpLassignvariableop_18_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_simple_rnn_40_simple_rnn_cell_40_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_20AssignVariableOpBassignvariableop_20_adam_simple_rnn_41_simple_rnn_cell_41_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_21AssignVariableOpLassignvariableop_21_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_41_simple_rnn_cell_41_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_17_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_17_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_25AssignVariableOpBassignvariableop_25_adam_simple_rnn_40_simple_rnn_cell_40_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_26AssignVariableOpLassignvariableop_26_adam_simple_rnn_40_simple_rnn_cell_40_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_simple_rnn_40_simple_rnn_cell_40_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_28AssignVariableOpBassignvariableop_28_adam_simple_rnn_41_simple_rnn_cell_41_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_29AssignVariableOpLassignvariableop_29_adam_simple_rnn_41_simple_rnn_cell_41_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_simple_rnn_41_simple_rnn_cell_41_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ∙
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╒
е
while_cond_64854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64854___redundant_placeholder03
/while_while_cond_64854___redundant_placeholder13
/while_while_cond_64854___redundant_placeholder23
/while_while_cond_64854___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
¤
ш
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62368

inputs

states0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         nG
TanhTanhadd:z:0*
T0*'
_output_shapes
:         nW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         nС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         :         n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         n
 
_user_specified_namestates
╔=
┴
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_65029

inputsC
1simple_rnn_cell_41_matmul_readvariableop_resource:nn@
2simple_rnn_cell_41_biasadd_readvariableop_resource:nE
3simple_rnn_cell_41_matmul_1_readvariableop_resource:nn
identityИв)simple_rnn_cell_41/BiasAdd/ReadVariableOpв(simple_rnn_cell_41/MatMul/ReadVariableOpв*simple_rnn_cell_41/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<         nD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maskЪ
(simple_rnn_cell_41/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_41_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype0б
simple_rnn_cell_41/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nШ
)simple_rnn_cell_41/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_41_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0п
simple_rnn_cell_41/BiasAddBiasAdd#simple_rnn_cell_41/MatMul:product:01simple_rnn_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЮ
*simple_rnn_cell_41/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_41_matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0Ы
simple_rnn_cell_41/MatMul_1MatMulzeros:output:02simple_rnn_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         nЭ
simple_rnn_cell_41/addAddV2#simple_rnn_cell_41/BiasAdd:output:0%simple_rnn_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:         nm
simple_rnn_cell_41/TanhTanhsimple_rnn_cell_41/add:z:0*
T0*'
_output_shapes
:         nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┘
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_41_matmul_readvariableop_resource2simple_rnn_cell_41_biasadd_readvariableop_resource3simple_rnn_cell_41_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_64963*
condR
while_cond_64962*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<         n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         <ng
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         n╥
NoOpNoOp*^simple_rnn_cell_41/BiasAdd/ReadVariableOp)^simple_rnn_cell_41/MatMul/ReadVariableOp+^simple_rnn_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         <n: : : 2V
)simple_rnn_cell_41/BiasAdd/ReadVariableOp)simple_rnn_cell_41/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_41/MatMul/ReadVariableOp(simple_rnn_cell_41/MatMul/ReadVariableOp2X
*simple_rnn_cell_41/MatMul_1/ReadVariableOp*simple_rnn_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         <n
 
_user_specified_nameinputs
ї9
Ї
simple_rnn_40_while_body_638588
4simple_rnn_40_while_simple_rnn_40_while_loop_counter>
:simple_rnn_40_while_simple_rnn_40_while_maximum_iterations#
simple_rnn_40_while_placeholder%
!simple_rnn_40_while_placeholder_1%
!simple_rnn_40_while_placeholder_27
3simple_rnn_40_while_simple_rnn_40_strided_slice_1_0s
osimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0:nV
Hsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0:n[
Isimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0:nn 
simple_rnn_40_while_identity"
simple_rnn_40_while_identity_1"
simple_rnn_40_while_identity_2"
simple_rnn_40_while_identity_3"
simple_rnn_40_while_identity_45
1simple_rnn_40_while_simple_rnn_40_strided_slice_1q
msimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource:nT
Fsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource:nY
Gsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource:nnИв=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpв<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpв>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpЦ
Esimple_rnn_40/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ь
7simple_rnn_40/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_40_while_placeholderNsimple_rnn_40/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0─
<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0я
-simple_rnn_40/while/simple_rnn_cell_40/MatMulMatMul>simple_rnn_40/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┬
=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0ы
.simple_rnn_40/while/simple_rnn_cell_40/BiasAddBiasAdd7simple_rnn_40/while/simple_rnn_cell_40/MatMul:product:0Esimple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n╚
>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0╓
/simple_rnn_40/while/simple_rnn_cell_40/MatMul_1MatMul!simple_rnn_40_while_placeholder_2Fsimple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n┘
*simple_rnn_40/while/simple_rnn_cell_40/addAddV27simple_rnn_40/while/simple_rnn_cell_40/BiasAdd:output:09simple_rnn_40/while/simple_rnn_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:         nХ
+simple_rnn_40/while/simple_rnn_cell_40/TanhTanh.simple_rnn_40/while/simple_rnn_cell_40/add:z:0*
T0*'
_output_shapes
:         nВ
8simple_rnn_40/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_40_while_placeholder_1simple_rnn_40_while_placeholder/simple_rnn_40/while/simple_rnn_cell_40/Tanh:y:0*
_output_shapes
: *
element_dtype0:щш╥[
simple_rnn_40/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
simple_rnn_40/while/addAddV2simple_rnn_40_while_placeholder"simple_rnn_40/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_40/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
simple_rnn_40/while/add_1AddV24simple_rnn_40_while_simple_rnn_40_while_loop_counter$simple_rnn_40/while/add_1/y:output:0*
T0*
_output_shapes
: Г
simple_rnn_40/while/IdentityIdentitysimple_rnn_40/while/add_1:z:0^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: в
simple_rnn_40/while/Identity_1Identity:simple_rnn_40_while_simple_rnn_40_while_maximum_iterations^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: Г
simple_rnn_40/while/Identity_2Identitysimple_rnn_40/while/add:z:0^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: ├
simple_rnn_40/while/Identity_3IdentityHsimple_rnn_40/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_40/while/NoOp*
T0*
_output_shapes
: :щш╥и
simple_rnn_40/while/Identity_4Identity/simple_rnn_40/while/simple_rnn_cell_40/Tanh:y:0^simple_rnn_40/while/NoOp*
T0*'
_output_shapes
:         nЪ
simple_rnn_40/while/NoOpNoOp>^simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp=^simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp?^simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_40_while_identity%simple_rnn_40/while/Identity:output:0"I
simple_rnn_40_while_identity_1'simple_rnn_40/while/Identity_1:output:0"I
simple_rnn_40_while_identity_2'simple_rnn_40/while/Identity_2:output:0"I
simple_rnn_40_while_identity_3'simple_rnn_40/while/Identity_3:output:0"I
simple_rnn_40_while_identity_4'simple_rnn_40/while/Identity_4:output:0"h
1simple_rnn_40_while_simple_rnn_40_strided_slice_13simple_rnn_40_while_simple_rnn_40_strided_slice_1_0"Т
Fsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resourceHsimple_rnn_40_while_simple_rnn_cell_40_biasadd_readvariableop_resource_0"Ф
Gsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resourceIsimple_rnn_40_while_simple_rnn_cell_40_matmul_1_readvariableop_resource_0"Р
Esimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resourceGsimple_rnn_40_while_simple_rnn_cell_40_matmul_readvariableop_resource_0"р
msimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensorosimple_rnn_40_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_40_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         n: : : : : 2~
=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp=simple_rnn_40/while/simple_rnn_cell_40/BiasAdd/ReadVariableOp2|
<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp<simple_rnn_40/while/simple_rnn_cell_40/MatMul/ReadVariableOp2А
>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp>simple_rnn_40/while/simple_rnn_cell_40/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
: 
╒
е
while_cond_64638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64638___redundant_placeholder03
/while_while_cond_64638___redundant_placeholder13
/while_while_cond_64638___redundant_placeholder23
/while_while_cond_64638___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         n: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         n:

_output_shapes
: :

_output_shapes
:
Х4
Ь
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_62483

inputs*
simple_rnn_cell_40_62408:n&
simple_rnn_cell_40_62410:n*
simple_rnn_cell_40_62412:nn
identityИв*simple_rnn_cell_40/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ns
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         nc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskэ
*simple_rnn_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_40_62408simple_rnn_cell_40_62410simple_rnn_cell_40_62412*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         n:         n*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_62368n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_40_62408simple_rnn_cell_40_62410simple_rnn_cell_40_62412*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_62420*
condR
while_cond_62419*8
output_shapes'
%: : : : :         n: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    n   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  n*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  nk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  n{
NoOpNoOp+^simple_rnn_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2X
*simple_rnn_cell_40/StatefulPartitionedCall*simple_rnn_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs"РL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╟
serving_default│
W
simple_rnn_40_input@
%serving_default_simple_rnn_40_input:0         <<
dense_170
StatefulPartitionedCall:0         tensorflow/serving/predict:Ё╢
ї
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
|__call__
*}&call_and_return_all_conditional_losses
~_default_save_signature"
_tf_keras_sequential
─
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
╛
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
╛
	variables
trainable_variables
regularization_losses
 	keras_api
!_random_generator
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
З__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
у
(iter

)beta_1

*beta_2
	+decay
,learning_rate"ml#mm-mn.mo/mp0mq1mr2ms"vt#vu-vv.vw/vx0vy1vz2v{"
	optimizer
X
-0
.1
/2
03
14
25
"6
#7"
trackable_list_wrapper
X
-0
.1
/2
03
14
25
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
	regularization_losses
|__call__
~_default_save_signature
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
-
Йserving_default"
signature_map
ъ

-kernel
.recurrent_kernel
/bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<_random_generator
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
╗

=states
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ъ

0kernel
1recurrent_kernel
2bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L_random_generator
М__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
!:n2dense_17/kernel
:2dense_17/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
$	variables
%trainable_variables
&regularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
9:7n2'simple_rnn_40/simple_rnn_cell_40/kernel
C:Ann21simple_rnn_40/simple_rnn_cell_40/recurrent_kernel
3:1n2%simple_rnn_40/simple_rnn_cell_40/bias
9:7nn2'simple_rnn_41/simple_rnn_cell_41/kernel
C:Ann21simple_rnn_41/simple_rnn_cell_41/recurrent_kernel
3:1n2%simple_rnn_41/simple_rnn_cell_41/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
]0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
8	variables
9trainable_variables
:regularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
░
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	htotal
	icount
j	variables
k	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
&:$n2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
>:<n2.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/m
H:Fnn28Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/m
8:6n2,Adam/simple_rnn_40/simple_rnn_cell_40/bias/m
>:<nn2.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/m
H:Fnn28Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/m
8:6n2,Adam/simple_rnn_41/simple_rnn_cell_41/bias/m
&:$n2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
>:<n2.Adam/simple_rnn_40/simple_rnn_cell_40/kernel/v
H:Fnn28Adam/simple_rnn_40/simple_rnn_cell_40/recurrent_kernel/v
8:6n2,Adam/simple_rnn_40/simple_rnn_cell_40/bias/v
>:<nn2.Adam/simple_rnn_41/simple_rnn_cell_41/kernel/v
H:Fnn28Adam/simple_rnn_41/simple_rnn_cell_41/recurrent_kernel/v
8:6n2,Adam/simple_rnn_41/simple_rnn_cell_41/bias/v
В2 
-__inference_sequential_17_layer_call_fn_63071
-__inference_sequential_17_layer_call_fn_63575
-__inference_sequential_17_layer_call_fn_63596
-__inference_sequential_17_layer_call_fn_63475└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
H__inference_sequential_17_layer_call_and_return_conditional_losses_63816
H__inference_sequential_17_layer_call_and_return_conditional_losses_64050
H__inference_sequential_17_layer_call_and_return_conditional_losses_63500
H__inference_sequential_17_layer_call_and_return_conditional_losses_63525└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╫B╘
 __inference__wrapped_model_62200simple_rnn_40_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ч2Ф
-__inference_simple_rnn_40_layer_call_fn_64061
-__inference_simple_rnn_40_layer_call_fn_64072
-__inference_simple_rnn_40_layer_call_fn_64083
-__inference_simple_rnn_40_layer_call_fn_64094╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Г2А
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64202
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64310
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64418
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64526╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_40_layer_call_fn_64531
*__inference_dropout_40_layer_call_fn_64536┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_40_layer_call_and_return_conditional_losses_64541
E__inference_dropout_40_layer_call_and_return_conditional_losses_64553┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ч2Ф
-__inference_simple_rnn_41_layer_call_fn_64564
-__inference_simple_rnn_41_layer_call_fn_64575
-__inference_simple_rnn_41_layer_call_fn_64586
-__inference_simple_rnn_41_layer_call_fn_64597╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Г2А
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64705
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64813
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64921
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_65029╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_41_layer_call_fn_65034
*__inference_dropout_41_layer_call_fn_65039┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_41_layer_call_and_return_conditional_losses_65044
E__inference_dropout_41_layer_call_and_return_conditional_losses_65056┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╥2╧
(__inference_dense_17_layer_call_fn_65065в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_17_layer_call_and_return_conditional_losses_65075в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓B╙
#__inference_signature_wrapper_63554simple_rnn_40_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
м2й
2__inference_simple_rnn_cell_40_layer_call_fn_65089
2__inference_simple_rnn_cell_40_layer_call_fn_65103╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_65120
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_65137╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
м2й
2__inference_simple_rnn_cell_41_layer_call_fn_65151
2__inference_simple_rnn_cell_41_layer_call_fn_65165╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_65182
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_65199╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 ж
 __inference__wrapped_model_62200Б-/.021"#@в=
6в3
1К.
simple_rnn_40_input         <
к "3к0
.
dense_17"К
dense_17         г
C__inference_dense_17_layer_call_and_return_conditional_losses_65075\"#/в,
%в"
 К
inputs         n
к "%в"
К
0         
Ъ {
(__inference_dense_17_layer_call_fn_65065O"#/в,
%в"
 К
inputs         n
к "К         н
E__inference_dropout_40_layer_call_and_return_conditional_losses_64541d7в4
-в*
$К!
inputs         <n
p 
к ")в&
К
0         <n
Ъ н
E__inference_dropout_40_layer_call_and_return_conditional_losses_64553d7в4
-в*
$К!
inputs         <n
p
к ")в&
К
0         <n
Ъ Е
*__inference_dropout_40_layer_call_fn_64531W7в4
-в*
$К!
inputs         <n
p 
к "К         <nЕ
*__inference_dropout_40_layer_call_fn_64536W7в4
-в*
$К!
inputs         <n
p
к "К         <nе
E__inference_dropout_41_layer_call_and_return_conditional_losses_65044\3в0
)в&
 К
inputs         n
p 
к "%в"
К
0         n
Ъ е
E__inference_dropout_41_layer_call_and_return_conditional_losses_65056\3в0
)в&
 К
inputs         n
p
к "%в"
К
0         n
Ъ }
*__inference_dropout_41_layer_call_fn_65034O3в0
)в&
 К
inputs         n
p 
к "К         n}
*__inference_dropout_41_layer_call_fn_65039O3в0
)в&
 К
inputs         n
p
к "К         n╟
H__inference_sequential_17_layer_call_and_return_conditional_losses_63500{-/.021"#HвE
>в;
1К.
simple_rnn_40_input         <
p 

 
к "%в"
К
0         
Ъ ╟
H__inference_sequential_17_layer_call_and_return_conditional_losses_63525{-/.021"#HвE
>в;
1К.
simple_rnn_40_input         <
p

 
к "%в"
К
0         
Ъ ║
H__inference_sequential_17_layer_call_and_return_conditional_losses_63816n-/.021"#;в8
1в.
$К!
inputs         <
p 

 
к "%в"
К
0         
Ъ ║
H__inference_sequential_17_layer_call_and_return_conditional_losses_64050n-/.021"#;в8
1в.
$К!
inputs         <
p

 
к "%в"
К
0         
Ъ Я
-__inference_sequential_17_layer_call_fn_63071n-/.021"#HвE
>в;
1К.
simple_rnn_40_input         <
p 

 
к "К         Я
-__inference_sequential_17_layer_call_fn_63475n-/.021"#HвE
>в;
1К.
simple_rnn_40_input         <
p

 
к "К         Т
-__inference_sequential_17_layer_call_fn_63575a-/.021"#;в8
1в.
$К!
inputs         <
p 

 
к "К         Т
-__inference_sequential_17_layer_call_fn_63596a-/.021"#;в8
1в.
$К!
inputs         <
p

 
к "К         └
#__inference_signature_wrapper_63554Ш-/.021"#WвT
в 
MкJ
H
simple_rnn_40_input1К.
simple_rnn_40_input         <"3к0
.
dense_17"К
dense_17         ╫
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64202К-/.OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "2в/
(К%
0                  n
Ъ ╫
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64310К-/.OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "2в/
(К%
0                  n
Ъ ╜
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64418q-/.?в<
5в2
$К!
inputs         <

 
p 

 
к ")в&
К
0         <n
Ъ ╜
H__inference_simple_rnn_40_layer_call_and_return_conditional_losses_64526q-/.?в<
5в2
$К!
inputs         <

 
p

 
к ")в&
К
0         <n
Ъ о
-__inference_simple_rnn_40_layer_call_fn_64061}-/.OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "%К"                  nо
-__inference_simple_rnn_40_layer_call_fn_64072}-/.OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "%К"                  nХ
-__inference_simple_rnn_40_layer_call_fn_64083d-/.?в<
5в2
$К!
inputs         <

 
p 

 
к "К         <nХ
-__inference_simple_rnn_40_layer_call_fn_64094d-/.?в<
5в2
$К!
inputs         <

 
p

 
к "К         <n╔
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64705}021OвL
EвB
4Ъ1
/К,
inputs/0                  n

 
p 

 
к "%в"
К
0         n
Ъ ╔
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64813}021OвL
EвB
4Ъ1
/К,
inputs/0                  n

 
p

 
к "%в"
К
0         n
Ъ ╣
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_64921m021?в<
5в2
$К!
inputs         <n

 
p 

 
к "%в"
К
0         n
Ъ ╣
H__inference_simple_rnn_41_layer_call_and_return_conditional_losses_65029m021?в<
5в2
$К!
inputs         <n

 
p

 
к "%в"
К
0         n
Ъ б
-__inference_simple_rnn_41_layer_call_fn_64564p021OвL
EвB
4Ъ1
/К,
inputs/0                  n

 
p 

 
к "К         nб
-__inference_simple_rnn_41_layer_call_fn_64575p021OвL
EвB
4Ъ1
/К,
inputs/0                  n

 
p

 
к "К         nС
-__inference_simple_rnn_41_layer_call_fn_64586`021?в<
5в2
$К!
inputs         <n

 
p 

 
к "К         nС
-__inference_simple_rnn_41_layer_call_fn_64597`021?в<
5в2
$К!
inputs         <n

 
p

 
к "К         nЙ
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_65120╖-/.\вY
RвO
 К
inputs         
'в$
"К
states/0         n
p 
к "RвO
HвE
К
0/0         n
$Ъ!
К
0/1/0         n
Ъ Й
M__inference_simple_rnn_cell_40_layer_call_and_return_conditional_losses_65137╖-/.\вY
RвO
 К
inputs         
'в$
"К
states/0         n
p
к "RвO
HвE
К
0/0         n
$Ъ!
К
0/1/0         n
Ъ р
2__inference_simple_rnn_cell_40_layer_call_fn_65089й-/.\вY
RвO
 К
inputs         
'в$
"К
states/0         n
p 
к "DвA
К
0         n
"Ъ
К
1/0         nр
2__inference_simple_rnn_cell_40_layer_call_fn_65103й-/.\вY
RвO
 К
inputs         
'в$
"К
states/0         n
p
к "DвA
К
0         n
"Ъ
К
1/0         nЙ
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_65182╖021\вY
RвO
 К
inputs         n
'в$
"К
states/0         n
p 
к "RвO
HвE
К
0/0         n
$Ъ!
К
0/1/0         n
Ъ Й
M__inference_simple_rnn_cell_41_layer_call_and_return_conditional_losses_65199╖021\вY
RвO
 К
inputs         n
'в$
"К
states/0         n
p
к "RвO
HвE
К
0/0         n
$Ъ!
К
0/1/0         n
Ъ р
2__inference_simple_rnn_cell_41_layer_call_fn_65151й021\вY
RвO
 К
inputs         n
'в$
"К
states/0         n
p 
к "DвA
К
0         n
"Ъ
К
1/0         nр
2__inference_simple_rnn_cell_41_layer_call_fn_65165й021\вY
RвO
 К
inputs         n
'в$
"К
states/0         n
p
к "DвA
К
0         n
"Ъ
К
1/0         n