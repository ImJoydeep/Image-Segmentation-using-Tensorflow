߱-
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??#
?
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
: *
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
: *
dtype0
?
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
: *
dtype0
?
conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_64/kernel
}
$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_64/bias
m
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes
:@*
dtype0
?
conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_65/kernel
}
$conv2d_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_65/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_65/bias
m
"conv2d_65/bias/Read/ReadVariableOpReadVariableOpconv2d_65/bias*
_output_shapes
:@*
dtype0
?
conv2d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_66/kernel
~
$conv2d_66/kernel/Read/ReadVariableOpReadVariableOpconv2d_66/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_66/bias
n
"conv2d_66/bias/Read/ReadVariableOpReadVariableOpconv2d_66/bias*
_output_shapes	
:?*
dtype0
?
conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_67/kernel

$conv2d_67/kernel/Read/ReadVariableOpReadVariableOpconv2d_67/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_67/bias
n
"conv2d_67/bias/Read/ReadVariableOpReadVariableOpconv2d_67/bias*
_output_shapes	
:?*
dtype0
?
conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_68/kernel

$conv2d_68/kernel/Read/ReadVariableOpReadVariableOpconv2d_68/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_68/bias
n
"conv2d_68/bias/Read/ReadVariableOpReadVariableOpconv2d_68/bias*
_output_shapes	
:?*
dtype0
?
conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_69/kernel

$conv2d_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_69/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_69/bias
n
"conv2d_69/bias/Read/ReadVariableOpReadVariableOpconv2d_69/bias*
_output_shapes	
:?*
dtype0
?
conv2d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_70/kernel

$conv2d_70/kernel/Read/ReadVariableOpReadVariableOpconv2d_70/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_70/bias
n
"conv2d_70/bias/Read/ReadVariableOpReadVariableOpconv2d_70/bias*
_output_shapes	
:?*
dtype0
?
conv2d_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_71/kernel

$conv2d_71/kernel/Read/ReadVariableOpReadVariableOpconv2d_71/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_71/bias
n
"conv2d_71/bias/Read/ReadVariableOpReadVariableOpconv2d_71/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_11/kernel
?
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameconv2d_transpose_11/bias
?
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes	
:?*
dtype0
?
conv2d_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_72/kernel

$conv2d_72/kernel/Read/ReadVariableOpReadVariableOpconv2d_72/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_72/bias
n
"conv2d_72/bias/Read/ReadVariableOpReadVariableOpconv2d_72/bias*
_output_shapes	
:?*
dtype0
?
conv2d_73/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_73/kernel

$conv2d_73/kernel/Read/ReadVariableOpReadVariableOpconv2d_73/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_73/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_73/bias
n
"conv2d_73/bias/Read/ReadVariableOpReadVariableOpconv2d_73/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_12/kernel
?
.conv2d_transpose_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameconv2d_transpose_12/bias
?
,conv2d_transpose_12/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/bias*
_output_shapes	
:?*
dtype0
?
conv2d_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_74/kernel

$conv2d_74/kernel/Read/ReadVariableOpReadVariableOpconv2d_74/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_74/bias
n
"conv2d_74/bias/Read/ReadVariableOpReadVariableOpconv2d_74/bias*
_output_shapes	
:?*
dtype0
?
conv2d_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_75/kernel

$conv2d_75/kernel/Read/ReadVariableOpReadVariableOpconv2d_75/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_75/bias
n
"conv2d_75/bias/Read/ReadVariableOpReadVariableOpconv2d_75/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_13/kernel
?
.conv2d_transpose_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_transpose_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_13/bias
?
,conv2d_transpose_13/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/bias*
_output_shapes
:@*
dtype0
?
conv2d_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_76/kernel
~
$conv2d_76/kernel/Read/ReadVariableOpReadVariableOpconv2d_76/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_76/bias
m
"conv2d_76/bias/Read/ReadVariableOpReadVariableOpconv2d_76/bias*
_output_shapes
:@*
dtype0
?
conv2d_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_77/kernel
}
$conv2d_77/kernel/Read/ReadVariableOpReadVariableOpconv2d_77/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_77/bias
m
"conv2d_77/bias/Read/ReadVariableOpReadVariableOpconv2d_77/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_14/kernel
?
.conv2d_transpose_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_14/bias
?
,conv2d_transpose_14/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/bias*
_output_shapes
: *
dtype0
?
conv2d_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_78/kernel
}
$conv2d_78/kernel/Read/ReadVariableOpReadVariableOpconv2d_78/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_78/bias
m
"conv2d_78/bias/Read/ReadVariableOpReadVariableOpconv2d_78/bias*
_output_shapes
: *
dtype0
?
conv2d_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_79/kernel
}
$conv2d_79/kernel/Read/ReadVariableOpReadVariableOpconv2d_79/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_79/bias
m
"conv2d_79/bias/Read/ReadVariableOpReadVariableOpconv2d_79/bias*
_output_shapes
: *
dtype0
?
conv2d_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_80/kernel
}
$conv2d_80/kernel/Read/ReadVariableOpReadVariableOpconv2d_80/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_80/bias
m
"conv2d_80/bias/Read/ReadVariableOpReadVariableOpconv2d_80/bias*
_output_shapes
: *
dtype0
?
conv2d_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_81/kernel
}
$conv2d_81/kernel/Read/ReadVariableOpReadVariableOpconv2d_81/kernel*&
_output_shapes
: *
dtype0
t
conv2d_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_81/bias
m
"conv2d_81/bias/Read/ReadVariableOpReadVariableOpconv2d_81/bias*
_output_shapes
:*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_62/kernel/m
?
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_63/kernel/m
?
+Adam/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_63/bias/m
{
)Adam/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_64/kernel/m
?
+Adam/conv2d_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_64/bias/m
{
)Adam/conv2d_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_65/kernel/m
?
+Adam/conv2d_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_65/bias/m
{
)Adam/conv2d_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_66/kernel/m
?
+Adam/conv2d_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_66/bias/m
|
)Adam/conv2d_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_67/kernel/m
?
+Adam/conv2d_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_67/bias/m
|
)Adam/conv2d_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_68/kernel/m
?
+Adam/conv2d_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_68/bias/m
|
)Adam/conv2d_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_69/kernel/m
?
+Adam/conv2d_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_69/bias/m
|
)Adam/conv2d_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_70/kernel/m
?
+Adam/conv2d_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_70/bias/m
|
)Adam/conv2d_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_71/kernel/m
?
+Adam/conv2d_71/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_71/bias/m
|
)Adam/conv2d_71/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_11/kernel/m
?
5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_11/bias/m
?
3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_72/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_72/kernel/m
?
+Adam/conv2d_72/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_72/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_72/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_72/bias/m
|
)Adam/conv2d_72/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_72/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_73/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_73/kernel/m
?
+Adam/conv2d_73/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_73/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_73/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_73/bias/m
|
)Adam/conv2d_73/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_73/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_12/kernel/m
?
5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_12/bias/m
?
3Adam/conv2d_transpose_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_12/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_74/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_74/kernel/m
?
+Adam/conv2d_74/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_74/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_74/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_74/bias/m
|
)Adam/conv2d_74/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_74/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_75/kernel/m
?
+Adam/conv2d_75/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_75/bias/m
|
)Adam/conv2d_75/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_13/kernel/m
?
5Adam/conv2d_transpose_13/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_13/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_13/bias/m
?
3Adam/conv2d_transpose_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_13/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*(
shared_nameAdam/conv2d_76/kernel/m
?
+Adam/conv2d_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/kernel/m*'
_output_shapes
:?@*
dtype0
?
Adam/conv2d_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_76/bias/m
{
)Adam/conv2d_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_77/kernel/m
?
+Adam/conv2d_77/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_77/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_77/bias/m
{
)Adam/conv2d_77/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_77/bias/m*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_14/kernel/m
?
5Adam/conv2d_transpose_14/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_14/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_14/bias/m
?
3Adam/conv2d_transpose_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_14/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_78/kernel/m
?
+Adam/conv2d_78/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_78/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_78/bias/m
{
)Adam/conv2d_78/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_78/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_79/kernel/m
?
+Adam/conv2d_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_79/bias/m
{
)Adam/conv2d_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_80/kernel/m
?
+Adam/conv2d_80/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_80/bias/m
{
)Adam/conv2d_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_81/kernel/m
?
+Adam/conv2d_81/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_81/bias/m
{
)Adam/conv2d_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_62/kernel/v
?
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_63/kernel/v
?
+Adam/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_63/bias/v
{
)Adam/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_64/kernel/v
?
+Adam/conv2d_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_64/bias/v
{
)Adam/conv2d_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_65/kernel/v
?
+Adam/conv2d_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_65/bias/v
{
)Adam/conv2d_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_66/kernel/v
?
+Adam/conv2d_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_66/bias/v
|
)Adam/conv2d_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_67/kernel/v
?
+Adam/conv2d_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_67/bias/v
|
)Adam/conv2d_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_68/kernel/v
?
+Adam/conv2d_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_68/bias/v
|
)Adam/conv2d_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_69/kernel/v
?
+Adam/conv2d_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_69/bias/v
|
)Adam/conv2d_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_70/kernel/v
?
+Adam/conv2d_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_70/bias/v
|
)Adam/conv2d_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_71/kernel/v
?
+Adam/conv2d_71/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_71/bias/v
|
)Adam/conv2d_71/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_11/kernel/v
?
5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_11/bias/v
?
3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_72/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_72/kernel/v
?
+Adam/conv2d_72/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_72/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_72/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_72/bias/v
|
)Adam/conv2d_72/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_72/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_73/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_73/kernel/v
?
+Adam/conv2d_73/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_73/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_73/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_73/bias/v
|
)Adam/conv2d_73/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_73/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_12/kernel/v
?
5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_12/bias/v
?
3Adam/conv2d_transpose_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_12/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_74/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_74/kernel/v
?
+Adam/conv2d_74/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_74/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_74/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_74/bias/v
|
)Adam/conv2d_74/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_74/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_75/kernel/v
?
+Adam/conv2d_75/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_75/bias/v
|
)Adam/conv2d_75/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_75/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_13/kernel/v
?
5Adam/conv2d_transpose_13/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_13/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_13/bias/v
?
3Adam/conv2d_transpose_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_13/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*(
shared_nameAdam/conv2d_76/kernel/v
?
+Adam/conv2d_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/kernel/v*'
_output_shapes
:?@*
dtype0
?
Adam/conv2d_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_76/bias/v
{
)Adam/conv2d_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_76/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_77/kernel/v
?
+Adam/conv2d_77/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_77/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_77/bias/v
{
)Adam/conv2d_77/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_77/bias/v*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_14/kernel/v
?
5Adam/conv2d_transpose_14/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_14/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_14/bias/v
?
3Adam/conv2d_transpose_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_14/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_78/kernel/v
?
+Adam/conv2d_78/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_78/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_78/bias/v
{
)Adam/conv2d_78/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_78/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_79/kernel/v
?
+Adam/conv2d_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_79/bias/v
{
)Adam/conv2d_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_80/kernel/v
?
+Adam/conv2d_80/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_80/bias/v
{
)Adam/conv2d_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_81/kernel/v
?
+Adam/conv2d_81/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_81/bias/v
{
)Adam/conv2d_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ӊ
valueȉBĉ B??
?	
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer-18
layer_with_weights-11
layer-19
layer_with_weights-12
layer-20
layer_with_weights-13
layer-21
layer-22
layer_with_weights-14
layer-23
layer_with_weights-15
layer-24
layer_with_weights-16
layer-25
layer-26
layer_with_weights-17
layer-27
layer_with_weights-18
layer-28
layer_with_weights-19
layer-29
layer-30
 layer_with_weights-20
 layer-31
!layer_with_weights-21
!layer-32
"layer_with_weights-22
"layer-33
#layer_with_weights-23
#layer-34
$	optimizer
%
signatures
#&_self_saveable_object_factories
'	variables
(regularization_losses
)trainable_variables
*	keras_api
%
#+_self_saveable_object_factories
?

,kernel
-bias
#._self_saveable_object_factories
/regularization_losses
0	variables
1trainable_variables
2	keras_api
?

3kernel
4bias
#5_self_saveable_object_factories
6regularization_losses
7	variables
8trainable_variables
9	keras_api
w
#:_self_saveable_object_factories
;regularization_losses
<	variables
=trainable_variables
>	keras_api
?

?kernel
@bias
#A_self_saveable_object_factories
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
?

Fkernel
Gbias
#H_self_saveable_object_factories
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
w
#M_self_saveable_object_factories
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
?

Rkernel
Sbias
#T_self_saveable_object_factories
Uregularization_losses
V	variables
Wtrainable_variables
X	keras_api
?

Ykernel
Zbias
#[_self_saveable_object_factories
\regularization_losses
]	variables
^trainable_variables
_	keras_api
w
#`_self_saveable_object_factories
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
?

ekernel
fbias
#g_self_saveable_object_factories
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
?

lkernel
mbias
#n_self_saveable_object_factories
oregularization_losses
p	variables
qtrainable_variables
r	keras_api
w
#s_self_saveable_object_factories
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
w
#x_self_saveable_object_factories
yregularization_losses
z	variables
{trainable_variables
|	keras_api
?

}kernel
~bias
#_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate,m?-m?3m?4m??m?@m?Fm?Gm?Rm?Sm?Ym?Zm?em?fm?lm?mm?}m?~m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?,v?-v?3v?4v??v?@v?Fv?Gv?Rv?Sv?Yv?Zv?ev?fv?lv?mv?}v?~v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
 
 
?
,0
-1
32
43
?4
@5
F6
G7
R8
S9
Y10
Z11
e12
f13
l14
m15
}16
~17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
 
?
,0
-1
32
43
?4
@5
F6
G7
R8
S9
Y10
Z11
e12
f13
l14
m15
}16
~17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?
?metrics
?layers
?layer_metrics
'	variables
?non_trainable_variables
(regularization_losses
 ?layer_regularization_losses
)trainable_variables
 
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

,0
-1

,0
-1
?
/regularization_losses
?metrics
?layers
?layer_metrics
0	variables
?non_trainable_variables
 ?layer_regularization_losses
1trainable_variables
\Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

30
41

30
41
?
6regularization_losses
?metrics
?layers
?layer_metrics
7	variables
?non_trainable_variables
 ?layer_regularization_losses
8trainable_variables
 
 
 
 
?
;regularization_losses
?metrics
?layers
?layer_metrics
<	variables
?non_trainable_variables
 ?layer_regularization_losses
=trainable_variables
\Z
VARIABLE_VALUEconv2d_64/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_64/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
@1

?0
@1
?
Bregularization_losses
?metrics
?layers
?layer_metrics
C	variables
?non_trainable_variables
 ?layer_regularization_losses
Dtrainable_variables
\Z
VARIABLE_VALUEconv2d_65/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_65/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

F0
G1

F0
G1
?
Iregularization_losses
?metrics
?layers
?layer_metrics
J	variables
?non_trainable_variables
 ?layer_regularization_losses
Ktrainable_variables
 
 
 
 
?
Nregularization_losses
?metrics
?layers
?layer_metrics
O	variables
?non_trainable_variables
 ?layer_regularization_losses
Ptrainable_variables
\Z
VARIABLE_VALUEconv2d_66/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_66/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

R0
S1

R0
S1
?
Uregularization_losses
?metrics
?layers
?layer_metrics
V	variables
?non_trainable_variables
 ?layer_regularization_losses
Wtrainable_variables
\Z
VARIABLE_VALUEconv2d_67/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_67/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

Y0
Z1

Y0
Z1
?
\regularization_losses
?metrics
?layers
?layer_metrics
]	variables
?non_trainable_variables
 ?layer_regularization_losses
^trainable_variables
 
 
 
 
?
aregularization_losses
?metrics
?layers
?layer_metrics
b	variables
?non_trainable_variables
 ?layer_regularization_losses
ctrainable_variables
\Z
VARIABLE_VALUEconv2d_68/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_68/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

e0
f1

e0
f1
?
hregularization_losses
?metrics
?layers
?layer_metrics
i	variables
?non_trainable_variables
 ?layer_regularization_losses
jtrainable_variables
\Z
VARIABLE_VALUEconv2d_69/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_69/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

l0
m1

l0
m1
?
oregularization_losses
?metrics
?layers
?layer_metrics
p	variables
?non_trainable_variables
 ?layer_regularization_losses
qtrainable_variables
 
 
 
 
?
tregularization_losses
?metrics
?layers
?layer_metrics
u	variables
?non_trainable_variables
 ?layer_regularization_losses
vtrainable_variables
 
 
 
 
?
yregularization_losses
?metrics
?layers
?layer_metrics
z	variables
?non_trainable_variables
 ?layer_regularization_losses
{trainable_variables
\Z
VARIABLE_VALUEconv2d_70/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_70/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

}0
~1

}0
~1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
\Z
VARIABLE_VALUEconv2d_71/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_71/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
 
 
 
 
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
ge
VARIABLE_VALUEconv2d_transpose_11/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_11/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
 
 
 
 
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_72/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_72/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_73/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_73/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
ge
VARIABLE_VALUEconv2d_transpose_12/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_12/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
 
 
 
 
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_74/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_74/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_75/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_75/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
ge
VARIABLE_VALUEconv2d_transpose_13/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_13/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
 
 
 
 
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_76/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_76/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_77/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_77/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
ge
VARIABLE_VALUEconv2d_transpose_14/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_14/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
 
 
 
 
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_78/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_78/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_79/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_79/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_80/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_80/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
][
VARIABLE_VALUEconv2d_81/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_81/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
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

?0
?1
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
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
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_62/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_64/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_64/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_65/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_65/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_66/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_66/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_67/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_67/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_68/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_68/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_69/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_69/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_70/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_70/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_71/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_71/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_72/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_72/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_73/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_73/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_12/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_74/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_74/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_75/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_75/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_13/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_13/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_76/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_76/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_77/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_77/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_14/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_14/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_78/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_78/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_79/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_79/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_80/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_80/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_81/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_81/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_64/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_64/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_65/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_65/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_66/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_66/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_67/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_67/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_68/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_68/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_69/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_69/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_70/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_70/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_71/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_71/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_72/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_72/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_73/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_73/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_12/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_74/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_74/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_75/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_75/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_13/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_13/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_76/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_76/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_77/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_77/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_14/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_14/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_78/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_78/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_79/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_79/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_80/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_80/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_81/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_81/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_12Placeholder*0
_output_shapes
:?????????`?*
dtype0*%
shape:?????????`?
?

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_12conv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasconv2d_70/kernelconv2d_70/biasconv2d_71/kernelconv2d_71/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_72/kernelconv2d_72/biasconv2d_73/kernelconv2d_73/biasconv2d_transpose_12/kernelconv2d_transpose_12/biasconv2d_74/kernelconv2d_74/biasconv2d_75/kernelconv2d_75/biasconv2d_transpose_13/kernelconv2d_transpose_13/biasconv2d_76/kernelconv2d_76/biasconv2d_77/kernelconv2d_77/biasconv2d_transpose_14/kernelconv2d_transpose_14/biasconv2d_78/kernelconv2d_78/biasconv2d_79/kernelconv2d_79/biasconv2d_80/kernelconv2d_80/biasconv2d_81/kernelconv2d_81/bias*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_11715
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?6
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp$conv2d_65/kernel/Read/ReadVariableOp"conv2d_65/bias/Read/ReadVariableOp$conv2d_66/kernel/Read/ReadVariableOp"conv2d_66/bias/Read/ReadVariableOp$conv2d_67/kernel/Read/ReadVariableOp"conv2d_67/bias/Read/ReadVariableOp$conv2d_68/kernel/Read/ReadVariableOp"conv2d_68/bias/Read/ReadVariableOp$conv2d_69/kernel/Read/ReadVariableOp"conv2d_69/bias/Read/ReadVariableOp$conv2d_70/kernel/Read/ReadVariableOp"conv2d_70/bias/Read/ReadVariableOp$conv2d_71/kernel/Read/ReadVariableOp"conv2d_71/bias/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOp$conv2d_72/kernel/Read/ReadVariableOp"conv2d_72/bias/Read/ReadVariableOp$conv2d_73/kernel/Read/ReadVariableOp"conv2d_73/bias/Read/ReadVariableOp.conv2d_transpose_12/kernel/Read/ReadVariableOp,conv2d_transpose_12/bias/Read/ReadVariableOp$conv2d_74/kernel/Read/ReadVariableOp"conv2d_74/bias/Read/ReadVariableOp$conv2d_75/kernel/Read/ReadVariableOp"conv2d_75/bias/Read/ReadVariableOp.conv2d_transpose_13/kernel/Read/ReadVariableOp,conv2d_transpose_13/bias/Read/ReadVariableOp$conv2d_76/kernel/Read/ReadVariableOp"conv2d_76/bias/Read/ReadVariableOp$conv2d_77/kernel/Read/ReadVariableOp"conv2d_77/bias/Read/ReadVariableOp.conv2d_transpose_14/kernel/Read/ReadVariableOp,conv2d_transpose_14/bias/Read/ReadVariableOp$conv2d_78/kernel/Read/ReadVariableOp"conv2d_78/bias/Read/ReadVariableOp$conv2d_79/kernel/Read/ReadVariableOp"conv2d_79/bias/Read/ReadVariableOp$conv2d_80/kernel/Read/ReadVariableOp"conv2d_80/bias/Read/ReadVariableOp$conv2d_81/kernel/Read/ReadVariableOp"conv2d_81/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp+Adam/conv2d_63/kernel/m/Read/ReadVariableOp)Adam/conv2d_63/bias/m/Read/ReadVariableOp+Adam/conv2d_64/kernel/m/Read/ReadVariableOp)Adam/conv2d_64/bias/m/Read/ReadVariableOp+Adam/conv2d_65/kernel/m/Read/ReadVariableOp)Adam/conv2d_65/bias/m/Read/ReadVariableOp+Adam/conv2d_66/kernel/m/Read/ReadVariableOp)Adam/conv2d_66/bias/m/Read/ReadVariableOp+Adam/conv2d_67/kernel/m/Read/ReadVariableOp)Adam/conv2d_67/bias/m/Read/ReadVariableOp+Adam/conv2d_68/kernel/m/Read/ReadVariableOp)Adam/conv2d_68/bias/m/Read/ReadVariableOp+Adam/conv2d_69/kernel/m/Read/ReadVariableOp)Adam/conv2d_69/bias/m/Read/ReadVariableOp+Adam/conv2d_70/kernel/m/Read/ReadVariableOp)Adam/conv2d_70/bias/m/Read/ReadVariableOp+Adam/conv2d_71/kernel/m/Read/ReadVariableOp)Adam/conv2d_71/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOp+Adam/conv2d_72/kernel/m/Read/ReadVariableOp)Adam/conv2d_72/bias/m/Read/ReadVariableOp+Adam/conv2d_73/kernel/m/Read/ReadVariableOp)Adam/conv2d_73/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_12/bias/m/Read/ReadVariableOp+Adam/conv2d_74/kernel/m/Read/ReadVariableOp)Adam/conv2d_74/bias/m/Read/ReadVariableOp+Adam/conv2d_75/kernel/m/Read/ReadVariableOp)Adam/conv2d_75/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_13/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_13/bias/m/Read/ReadVariableOp+Adam/conv2d_76/kernel/m/Read/ReadVariableOp)Adam/conv2d_76/bias/m/Read/ReadVariableOp+Adam/conv2d_77/kernel/m/Read/ReadVariableOp)Adam/conv2d_77/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_14/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_14/bias/m/Read/ReadVariableOp+Adam/conv2d_78/kernel/m/Read/ReadVariableOp)Adam/conv2d_78/bias/m/Read/ReadVariableOp+Adam/conv2d_79/kernel/m/Read/ReadVariableOp)Adam/conv2d_79/bias/m/Read/ReadVariableOp+Adam/conv2d_80/kernel/m/Read/ReadVariableOp)Adam/conv2d_80/bias/m/Read/ReadVariableOp+Adam/conv2d_81/kernel/m/Read/ReadVariableOp)Adam/conv2d_81/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp+Adam/conv2d_63/kernel/v/Read/ReadVariableOp)Adam/conv2d_63/bias/v/Read/ReadVariableOp+Adam/conv2d_64/kernel/v/Read/ReadVariableOp)Adam/conv2d_64/bias/v/Read/ReadVariableOp+Adam/conv2d_65/kernel/v/Read/ReadVariableOp)Adam/conv2d_65/bias/v/Read/ReadVariableOp+Adam/conv2d_66/kernel/v/Read/ReadVariableOp)Adam/conv2d_66/bias/v/Read/ReadVariableOp+Adam/conv2d_67/kernel/v/Read/ReadVariableOp)Adam/conv2d_67/bias/v/Read/ReadVariableOp+Adam/conv2d_68/kernel/v/Read/ReadVariableOp)Adam/conv2d_68/bias/v/Read/ReadVariableOp+Adam/conv2d_69/kernel/v/Read/ReadVariableOp)Adam/conv2d_69/bias/v/Read/ReadVariableOp+Adam/conv2d_70/kernel/v/Read/ReadVariableOp)Adam/conv2d_70/bias/v/Read/ReadVariableOp+Adam/conv2d_71/kernel/v/Read/ReadVariableOp)Adam/conv2d_71/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOp+Adam/conv2d_72/kernel/v/Read/ReadVariableOp)Adam/conv2d_72/bias/v/Read/ReadVariableOp+Adam/conv2d_73/kernel/v/Read/ReadVariableOp)Adam/conv2d_73/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_12/bias/v/Read/ReadVariableOp+Adam/conv2d_74/kernel/v/Read/ReadVariableOp)Adam/conv2d_74/bias/v/Read/ReadVariableOp+Adam/conv2d_75/kernel/v/Read/ReadVariableOp)Adam/conv2d_75/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_13/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_13/bias/v/Read/ReadVariableOp+Adam/conv2d_76/kernel/v/Read/ReadVariableOp)Adam/conv2d_76/bias/v/Read/ReadVariableOp+Adam/conv2d_77/kernel/v/Read/ReadVariableOp)Adam/conv2d_77/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_14/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_14/bias/v/Read/ReadVariableOp+Adam/conv2d_78/kernel/v/Read/ReadVariableOp)Adam/conv2d_78/bias/v/Read/ReadVariableOp+Adam/conv2d_79/kernel/v/Read/ReadVariableOp)Adam/conv2d_79/bias/v/Read/ReadVariableOp+Adam/conv2d_80/kernel/v/Read/ReadVariableOp)Adam/conv2d_80/bias/v/Read/ReadVariableOp+Adam/conv2d_81/kernel/v/Read/ReadVariableOp)Adam/conv2d_81/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_13384
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasconv2d_70/kernelconv2d_70/biasconv2d_71/kernelconv2d_71/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_72/kernelconv2d_72/biasconv2d_73/kernelconv2d_73/biasconv2d_transpose_12/kernelconv2d_transpose_12/biasconv2d_74/kernelconv2d_74/biasconv2d_75/kernelconv2d_75/biasconv2d_transpose_13/kernelconv2d_transpose_13/biasconv2d_76/kernelconv2d_76/biasconv2d_77/kernelconv2d_77/biasconv2d_transpose_14/kernelconv2d_transpose_14/biasconv2d_78/kernelconv2d_78/biasconv2d_79/kernelconv2d_79/biasconv2d_80/kernelconv2d_80/biasconv2d_81/kernelconv2d_81/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/conv2d_63/kernel/mAdam/conv2d_63/bias/mAdam/conv2d_64/kernel/mAdam/conv2d_64/bias/mAdam/conv2d_65/kernel/mAdam/conv2d_65/bias/mAdam/conv2d_66/kernel/mAdam/conv2d_66/bias/mAdam/conv2d_67/kernel/mAdam/conv2d_67/bias/mAdam/conv2d_68/kernel/mAdam/conv2d_68/bias/mAdam/conv2d_69/kernel/mAdam/conv2d_69/bias/mAdam/conv2d_70/kernel/mAdam/conv2d_70/bias/mAdam/conv2d_71/kernel/mAdam/conv2d_71/bias/m!Adam/conv2d_transpose_11/kernel/mAdam/conv2d_transpose_11/bias/mAdam/conv2d_72/kernel/mAdam/conv2d_72/bias/mAdam/conv2d_73/kernel/mAdam/conv2d_73/bias/m!Adam/conv2d_transpose_12/kernel/mAdam/conv2d_transpose_12/bias/mAdam/conv2d_74/kernel/mAdam/conv2d_74/bias/mAdam/conv2d_75/kernel/mAdam/conv2d_75/bias/m!Adam/conv2d_transpose_13/kernel/mAdam/conv2d_transpose_13/bias/mAdam/conv2d_76/kernel/mAdam/conv2d_76/bias/mAdam/conv2d_77/kernel/mAdam/conv2d_77/bias/m!Adam/conv2d_transpose_14/kernel/mAdam/conv2d_transpose_14/bias/mAdam/conv2d_78/kernel/mAdam/conv2d_78/bias/mAdam/conv2d_79/kernel/mAdam/conv2d_79/bias/mAdam/conv2d_80/kernel/mAdam/conv2d_80/bias/mAdam/conv2d_81/kernel/mAdam/conv2d_81/bias/mAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/conv2d_63/kernel/vAdam/conv2d_63/bias/vAdam/conv2d_64/kernel/vAdam/conv2d_64/bias/vAdam/conv2d_65/kernel/vAdam/conv2d_65/bias/vAdam/conv2d_66/kernel/vAdam/conv2d_66/bias/vAdam/conv2d_67/kernel/vAdam/conv2d_67/bias/vAdam/conv2d_68/kernel/vAdam/conv2d_68/bias/vAdam/conv2d_69/kernel/vAdam/conv2d_69/bias/vAdam/conv2d_70/kernel/vAdam/conv2d_70/bias/vAdam/conv2d_71/kernel/vAdam/conv2d_71/bias/v!Adam/conv2d_transpose_11/kernel/vAdam/conv2d_transpose_11/bias/vAdam/conv2d_72/kernel/vAdam/conv2d_72/bias/vAdam/conv2d_73/kernel/vAdam/conv2d_73/bias/v!Adam/conv2d_transpose_12/kernel/vAdam/conv2d_transpose_12/bias/vAdam/conv2d_74/kernel/vAdam/conv2d_74/bias/vAdam/conv2d_75/kernel/vAdam/conv2d_75/bias/v!Adam/conv2d_transpose_13/kernel/vAdam/conv2d_transpose_13/bias/vAdam/conv2d_76/kernel/vAdam/conv2d_76/bias/vAdam/conv2d_77/kernel/vAdam/conv2d_77/bias/v!Adam/conv2d_transpose_14/kernel/vAdam/conv2d_transpose_14/bias/vAdam/conv2d_78/kernel/vAdam/conv2d_78/bias/vAdam/conv2d_79/kernel/vAdam/conv2d_79/bias/vAdam/conv2d_80/kernel/vAdam/conv2d_80/bias/vAdam/conv2d_81/kernel/vAdam/conv2d_81/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_13853??
?
?
)__inference_conv2d_71_layer_call_fn_12613

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_71_layer_call_and_return_conditional_losses_102892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_10160

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0@ 
 
_user_specified_nameinputs
?
s
I__inference_concatenate_14_layer_call_and_return_conditional_losses_10458

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????`?@2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????`?@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+??????????????????????????? :?????????`? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?

?
D__inference_conv2d_81_layer_call_and_return_conditional_losses_10521

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
??
?'
B__inference_model_8_layer_call_and_return_conditional_losses_12150

inputsB
(conv2d_62_conv2d_readvariableop_resource: 7
)conv2d_62_biasadd_readvariableop_resource: B
(conv2d_63_conv2d_readvariableop_resource:  7
)conv2d_63_biasadd_readvariableop_resource: B
(conv2d_64_conv2d_readvariableop_resource: @7
)conv2d_64_biasadd_readvariableop_resource:@B
(conv2d_65_conv2d_readvariableop_resource:@@7
)conv2d_65_biasadd_readvariableop_resource:@C
(conv2d_66_conv2d_readvariableop_resource:@?8
)conv2d_66_biasadd_readvariableop_resource:	?D
(conv2d_67_conv2d_readvariableop_resource:??8
)conv2d_67_biasadd_readvariableop_resource:	?D
(conv2d_68_conv2d_readvariableop_resource:??8
)conv2d_68_biasadd_readvariableop_resource:	?D
(conv2d_69_conv2d_readvariableop_resource:??8
)conv2d_69_biasadd_readvariableop_resource:	?D
(conv2d_70_conv2d_readvariableop_resource:??8
)conv2d_70_biasadd_readvariableop_resource:	?D
(conv2d_71_conv2d_readvariableop_resource:??8
)conv2d_71_biasadd_readvariableop_resource:	?X
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_11_biasadd_readvariableop_resource:	?D
(conv2d_72_conv2d_readvariableop_resource:??8
)conv2d_72_biasadd_readvariableop_resource:	?D
(conv2d_73_conv2d_readvariableop_resource:??8
)conv2d_73_biasadd_readvariableop_resource:	?X
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_12_biasadd_readvariableop_resource:	?D
(conv2d_74_conv2d_readvariableop_resource:??8
)conv2d_74_biasadd_readvariableop_resource:	?D
(conv2d_75_conv2d_readvariableop_resource:??8
)conv2d_75_biasadd_readvariableop_resource:	?W
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_13_biasadd_readvariableop_resource:@C
(conv2d_76_conv2d_readvariableop_resource:?@7
)conv2d_76_biasadd_readvariableop_resource:@B
(conv2d_77_conv2d_readvariableop_resource:@@7
)conv2d_77_biasadd_readvariableop_resource:@V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_14_biasadd_readvariableop_resource: B
(conv2d_78_conv2d_readvariableop_resource:@ 7
)conv2d_78_biasadd_readvariableop_resource: B
(conv2d_79_conv2d_readvariableop_resource:  7
)conv2d_79_biasadd_readvariableop_resource: B
(conv2d_80_conv2d_readvariableop_resource:  7
)conv2d_80_biasadd_readvariableop_resource: B
(conv2d_81_conv2d_readvariableop_resource: 7
)conv2d_81_biasadd_readvariableop_resource:
identity?? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp? conv2d_65/BiasAdd/ReadVariableOp?conv2d_65/Conv2D/ReadVariableOp? conv2d_66/BiasAdd/ReadVariableOp?conv2d_66/Conv2D/ReadVariableOp? conv2d_67/BiasAdd/ReadVariableOp?conv2d_67/Conv2D/ReadVariableOp? conv2d_68/BiasAdd/ReadVariableOp?conv2d_68/Conv2D/ReadVariableOp? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? conv2d_71/BiasAdd/ReadVariableOp?conv2d_71/Conv2D/ReadVariableOp? conv2d_72/BiasAdd/ReadVariableOp?conv2d_72/Conv2D/ReadVariableOp? conv2d_73/BiasAdd/ReadVariableOp?conv2d_73/Conv2D/ReadVariableOp? conv2d_74/BiasAdd/ReadVariableOp?conv2d_74/Conv2D/ReadVariableOp? conv2d_75/BiasAdd/ReadVariableOp?conv2d_75/Conv2D/ReadVariableOp? conv2d_76/BiasAdd/ReadVariableOp?conv2d_76/Conv2D/ReadVariableOp? conv2d_77/BiasAdd/ReadVariableOp?conv2d_77/Conv2D/ReadVariableOp? conv2d_78/BiasAdd/ReadVariableOp?conv2d_78/Conv2D/ReadVariableOp? conv2d_79/BiasAdd/ReadVariableOp?conv2d_79/Conv2D/ReadVariableOp? conv2d_80/BiasAdd/ReadVariableOp?conv2d_80/Conv2D/ReadVariableOp? conv2d_81/BiasAdd/ReadVariableOp?conv2d_81/Conv2D/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?*conv2d_transpose_12/BiasAdd/ReadVariableOp?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?*conv2d_transpose_13/BiasAdd/ReadVariableOp?3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?*conv2d_transpose_14/BiasAdd/ReadVariableOp?3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2Dinputs'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_62/BiasAdd
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_62/Relu?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_63/BiasAdd
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_63/Relu?
max_pooling2d_16/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:?????????0@ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_64/Conv2D/ReadVariableOp?
conv2d_64/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_64/Conv2D?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_64/Relu?
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_65/Conv2D/ReadVariableOp?
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_65/Conv2D?
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp?
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_65/BiasAdd~
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_65/Relu?
max_pooling2d_17/MaxPoolMaxPoolconv2d_65/Relu:activations:0*/
_output_shapes
:????????? @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool?
conv2d_66/Conv2D/ReadVariableOpReadVariableOp(conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_66/Conv2D/ReadVariableOp?
conv2d_66/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_66/Conv2D?
 conv2d_66/BiasAdd/ReadVariableOpReadVariableOp)conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_66/BiasAdd/ReadVariableOp?
conv2d_66/BiasAddBiasAddconv2d_66/Conv2D:output:0(conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_66/BiasAdd
conv2d_66/ReluReluconv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_66/Relu?
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_67/Conv2D/ReadVariableOp?
conv2d_67/Conv2DConv2Dconv2d_66/Relu:activations:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_67/Conv2D?
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_67/BiasAdd/ReadVariableOp?
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_67/BiasAdd
conv2d_67/ReluReluconv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_67/Relu?
max_pooling2d_18/MaxPoolMaxPoolconv2d_67/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_18/MaxPool?
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_68/Conv2D/ReadVariableOp?
conv2d_68/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_68/Conv2D?
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_68/BiasAdd/ReadVariableOp?
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_68/BiasAdd
conv2d_68/ReluReluconv2d_68/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_68/Relu?
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_69/Conv2D/ReadVariableOp?
conv2d_69/Conv2DConv2Dconv2d_68/Relu:activations:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_69/Conv2D?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_69/BiasAdd/ReadVariableOp?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_69/BiasAdd
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_69/Relu?
dropout_8/IdentityIdentityconv2d_69/Relu:activations:0*
T0*0
_output_shapes
:??????????2
dropout_8/Identity?
max_pooling2d_19/MaxPoolMaxPooldropout_8/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_19/MaxPool?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_70/Conv2D/ReadVariableOp?
conv2d_70/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_70/Conv2D?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_70/BiasAdd/ReadVariableOp?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_70/BiasAdd
conv2d_70/ReluReluconv2d_70/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_70/Relu?
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_71/Conv2D/ReadVariableOp?
conv2d_71/Conv2DConv2Dconv2d_70/Relu:activations:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_71/Conv2D?
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_71/BiasAdd/ReadVariableOp?
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_71/BiasAdd
conv2d_71/ReluReluconv2d_71/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_71/Relu?
dropout_9/IdentityIdentityconv2d_71/Relu:activations:0*
T0*0
_output_shapes
:??????????2
dropout_9/Identity?
conv2d_transpose_11/ShapeShapedropout_9/Identity:output:0*
T0*
_output_shapes
:2
conv2d_transpose_11/Shape?
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stack?
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1?
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/2}
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_11/stack/3?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stack?
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stack?
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1?
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0dropout_9/Identity:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_11/BiasAdd/ReadVariableOp?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_transpose_11/BiasAddz
concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_11/concat/axis?
concatenate_11/concatConcatV2$conv2d_transpose_11/BiasAdd:output:0dropout_8/Identity:output:0#concatenate_11/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate_11/concat?
conv2d_72/Conv2D/ReadVariableOpReadVariableOp(conv2d_72_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_72/Conv2D/ReadVariableOp?
conv2d_72/Conv2DConv2Dconcatenate_11/concat:output:0'conv2d_72/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_72/Conv2D?
 conv2d_72/BiasAdd/ReadVariableOpReadVariableOp)conv2d_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_72/BiasAdd/ReadVariableOp?
conv2d_72/BiasAddBiasAddconv2d_72/Conv2D:output:0(conv2d_72/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_72/BiasAdd
conv2d_72/ReluReluconv2d_72/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_72/Relu?
conv2d_73/Conv2D/ReadVariableOpReadVariableOp(conv2d_73_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_73/Conv2D/ReadVariableOp?
conv2d_73/Conv2DConv2Dconv2d_72/Relu:activations:0'conv2d_73/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_73/Conv2D?
 conv2d_73/BiasAdd/ReadVariableOpReadVariableOp)conv2d_73_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_73/BiasAdd/ReadVariableOp?
conv2d_73/BiasAddBiasAddconv2d_73/Conv2D:output:0(conv2d_73/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_73/BiasAdd
conv2d_73/ReluReluconv2d_73/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_73/Relu?
conv2d_transpose_12/ShapeShapeconv2d_73/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape?
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack?
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1?
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_12/stack/2}
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_12/stack/3?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack?
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack?
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1?
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0conv2d_73/Relu:activations:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose?
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_12/BiasAdd/ReadVariableOp?
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_12/BiasAddz
concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_12/concat/axis?
concatenate_12/concatConcatV2$conv2d_transpose_12/BiasAdd:output:0conv2d_67/Relu:activations:0#concatenate_12/concat/axis:output:0*
N*
T0*0
_output_shapes
:????????? ?2
concatenate_12/concat?
conv2d_74/Conv2D/ReadVariableOpReadVariableOp(conv2d_74_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_74/Conv2D/ReadVariableOp?
conv2d_74/Conv2DConv2Dconcatenate_12/concat:output:0'conv2d_74/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_74/Conv2D?
 conv2d_74/BiasAdd/ReadVariableOpReadVariableOp)conv2d_74_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_74/BiasAdd/ReadVariableOp?
conv2d_74/BiasAddBiasAddconv2d_74/Conv2D:output:0(conv2d_74/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_74/BiasAdd
conv2d_74/ReluReluconv2d_74/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_74/Relu?
conv2d_75/Conv2D/ReadVariableOpReadVariableOp(conv2d_75_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_75/Conv2D/ReadVariableOp?
conv2d_75/Conv2DConv2Dconv2d_74/Relu:activations:0'conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_75/Conv2D?
 conv2d_75/BiasAdd/ReadVariableOpReadVariableOp)conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_75/BiasAdd/ReadVariableOp?
conv2d_75/BiasAddBiasAddconv2d_75/Conv2D:output:0(conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_75/BiasAdd
conv2d_75/ReluReluconv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_75/Relu?
conv2d_transpose_13/ShapeShapeconv2d_75/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape?
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack?
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1?
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2?
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/3?
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack?
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack?
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1?
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2?
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1?
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0conv2d_75/Relu:activations:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose?
*conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_13/BiasAdd/ReadVariableOp?
conv2d_transpose_13/BiasAddBiasAdd-conv2d_transpose_13/conv2d_transpose:output:02conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_transpose_13/BiasAddz
concatenate_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_13/concat/axis?
concatenate_13/concatConcatV2$conv2d_transpose_13/BiasAdd:output:0conv2d_65/Relu:activations:0#concatenate_13/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????0@?2
concatenate_13/concat?
conv2d_76/Conv2D/ReadVariableOpReadVariableOp(conv2d_76_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_76/Conv2D/ReadVariableOp?
conv2d_76/Conv2DConv2Dconcatenate_13/concat:output:0'conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_76/Conv2D?
 conv2d_76/BiasAdd/ReadVariableOpReadVariableOp)conv2d_76_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_76/BiasAdd/ReadVariableOp?
conv2d_76/BiasAddBiasAddconv2d_76/Conv2D:output:0(conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_76/BiasAdd~
conv2d_76/ReluReluconv2d_76/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_76/Relu?
conv2d_77/Conv2D/ReadVariableOpReadVariableOp(conv2d_77_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_77/Conv2D/ReadVariableOp?
conv2d_77/Conv2DConv2Dconv2d_76/Relu:activations:0'conv2d_77/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_77/Conv2D?
 conv2d_77/BiasAdd/ReadVariableOpReadVariableOp)conv2d_77_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_77/BiasAdd/ReadVariableOp?
conv2d_77/BiasAddBiasAddconv2d_77/Conv2D:output:0(conv2d_77/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_77/BiasAdd~
conv2d_77/ReluReluconv2d_77/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_77/Relu?
conv2d_transpose_14/ShapeShapeconv2d_77/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape?
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack?
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1?
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2?
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_14/stack/1}
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_14/stack/3?
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack?
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack?
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1?
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2?
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1?
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0conv2d_77/Relu:activations:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose?
*conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_14/BiasAdd/ReadVariableOp?
conv2d_transpose_14/BiasAddBiasAdd-conv2d_transpose_14/conv2d_transpose:output:02conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_transpose_14/BiasAddz
concatenate_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_14/concat/axis?
concatenate_14/concatConcatV2$conv2d_transpose_14/BiasAdd:output:0conv2d_63/Relu:activations:0#concatenate_14/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????`?@2
concatenate_14/concat?
conv2d_78/Conv2D/ReadVariableOpReadVariableOp(conv2d_78_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_78/Conv2D/ReadVariableOp?
conv2d_78/Conv2DConv2Dconcatenate_14/concat:output:0'conv2d_78/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_78/Conv2D?
 conv2d_78/BiasAdd/ReadVariableOpReadVariableOp)conv2d_78_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_78/BiasAdd/ReadVariableOp?
conv2d_78/BiasAddBiasAddconv2d_78/Conv2D:output:0(conv2d_78/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_78/BiasAdd
conv2d_78/ReluReluconv2d_78/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_78/Relu?
conv2d_79/Conv2D/ReadVariableOpReadVariableOp(conv2d_79_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_79/Conv2D/ReadVariableOp?
conv2d_79/Conv2DConv2Dconv2d_78/Relu:activations:0'conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_79/Conv2D?
 conv2d_79/BiasAdd/ReadVariableOpReadVariableOp)conv2d_79_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_79/BiasAdd/ReadVariableOp?
conv2d_79/BiasAddBiasAddconv2d_79/Conv2D:output:0(conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_79/BiasAdd
conv2d_79/ReluReluconv2d_79/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_79/Relu?
conv2d_80/Conv2D/ReadVariableOpReadVariableOp(conv2d_80_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_80/Conv2D/ReadVariableOp?
conv2d_80/Conv2DConv2Dconv2d_79/Relu:activations:0'conv2d_80/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_80/Conv2D?
 conv2d_80/BiasAdd/ReadVariableOpReadVariableOp)conv2d_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_80/BiasAdd/ReadVariableOp?
conv2d_80/BiasAddBiasAddconv2d_80/Conv2D:output:0(conv2d_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_80/BiasAdd
conv2d_80/ReluReluconv2d_80/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_80/Relu?
conv2d_81/Conv2D/ReadVariableOpReadVariableOp(conv2d_81_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_81/Conv2D/ReadVariableOp?
conv2d_81/Conv2DConv2Dconv2d_80/Relu:activations:0'conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?*
paddingSAME*
strides
2
conv2d_81/Conv2D?
 conv2d_81/BiasAdd/ReadVariableOpReadVariableOp)conv2d_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_81/BiasAdd/ReadVariableOp?
conv2d_81/BiasAddBiasAddconv2d_81/Conv2D:output:0(conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?2
conv2d_81/BiasAdd?
IdentityIdentityconv2d_81/BiasAdd:output:0!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp!^conv2d_66/BiasAdd/ReadVariableOp ^conv2d_66/Conv2D/ReadVariableOp!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp!^conv2d_72/BiasAdd/ReadVariableOp ^conv2d_72/Conv2D/ReadVariableOp!^conv2d_73/BiasAdd/ReadVariableOp ^conv2d_73/Conv2D/ReadVariableOp!^conv2d_74/BiasAdd/ReadVariableOp ^conv2d_74/Conv2D/ReadVariableOp!^conv2d_75/BiasAdd/ReadVariableOp ^conv2d_75/Conv2D/ReadVariableOp!^conv2d_76/BiasAdd/ReadVariableOp ^conv2d_76/Conv2D/ReadVariableOp!^conv2d_77/BiasAdd/ReadVariableOp ^conv2d_77/Conv2D/ReadVariableOp!^conv2d_78/BiasAdd/ReadVariableOp ^conv2d_78/Conv2D/ReadVariableOp!^conv2d_79/BiasAdd/ReadVariableOp ^conv2d_79/Conv2D/ReadVariableOp!^conv2d_80/BiasAdd/ReadVariableOp ^conv2d_80/Conv2D/ReadVariableOp!^conv2d_81/BiasAdd/ReadVariableOp ^conv2d_81/Conv2D/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp+^conv2d_transpose_13/BiasAdd/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp+^conv2d_transpose_14/BiasAdd/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2D
 conv2d_66/BiasAdd/ReadVariableOp conv2d_66/BiasAdd/ReadVariableOp2B
conv2d_66/Conv2D/ReadVariableOpconv2d_66/Conv2D/ReadVariableOp2D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2D
 conv2d_72/BiasAdd/ReadVariableOp conv2d_72/BiasAdd/ReadVariableOp2B
conv2d_72/Conv2D/ReadVariableOpconv2d_72/Conv2D/ReadVariableOp2D
 conv2d_73/BiasAdd/ReadVariableOp conv2d_73/BiasAdd/ReadVariableOp2B
conv2d_73/Conv2D/ReadVariableOpconv2d_73/Conv2D/ReadVariableOp2D
 conv2d_74/BiasAdd/ReadVariableOp conv2d_74/BiasAdd/ReadVariableOp2B
conv2d_74/Conv2D/ReadVariableOpconv2d_74/Conv2D/ReadVariableOp2D
 conv2d_75/BiasAdd/ReadVariableOp conv2d_75/BiasAdd/ReadVariableOp2B
conv2d_75/Conv2D/ReadVariableOpconv2d_75/Conv2D/ReadVariableOp2D
 conv2d_76/BiasAdd/ReadVariableOp conv2d_76/BiasAdd/ReadVariableOp2B
conv2d_76/Conv2D/ReadVariableOpconv2d_76/Conv2D/ReadVariableOp2D
 conv2d_77/BiasAdd/ReadVariableOp conv2d_77/BiasAdd/ReadVariableOp2B
conv2d_77/Conv2D/ReadVariableOpconv2d_77/Conv2D/ReadVariableOp2D
 conv2d_78/BiasAdd/ReadVariableOp conv2d_78/BiasAdd/ReadVariableOp2B
conv2d_78/Conv2D/ReadVariableOpconv2d_78/Conv2D/ReadVariableOp2D
 conv2d_79/BiasAdd/ReadVariableOp conv2d_79/BiasAdd/ReadVariableOp2B
conv2d_79/Conv2D/ReadVariableOpconv2d_79/Conv2D/ReadVariableOp2D
 conv2d_80/BiasAdd/ReadVariableOp conv2d_80/BiasAdd/ReadVariableOp2B
conv2d_80/Conv2D/ReadVariableOpconv2d_80/Conv2D/ReadVariableOp2D
 conv2d_81/BiasAdd/ReadVariableOp conv2d_81/BiasAdd/ReadVariableOp2B
conv2d_81/Conv2D/ReadVariableOpconv2d_81/Conv2D/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_13/BiasAdd/ReadVariableOp*conv2d_transpose_13/BiasAdd/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_14/BiasAdd/ReadVariableOp*conv2d_transpose_14/BiasAdd/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_10775

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_10818

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_14_layer_call_fn_12816
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_14_layer_call_and_return_conditional_losses_104582
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????`?@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+??????????????????????????? :?????????`? :k g
A
_output_shapes/
-:+??????????????????????????? 
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????`? 
"
_user_specified_name
inputs/1
?
?
3__inference_conv2d_transpose_12_layer_call_fn_10019

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_100092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_12584

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_79_layer_call_and_return_conditional_losses_10488

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
??
?
B__inference_model_8_layer_call_and_return_conditional_losses_10528

inputs)
conv2d_62_10126: 
conv2d_62_10128: )
conv2d_63_10143:  
conv2d_63_10145: )
conv2d_64_10161: @
conv2d_64_10163:@)
conv2d_65_10178:@@
conv2d_65_10180:@*
conv2d_66_10196:@?
conv2d_66_10198:	?+
conv2d_67_10213:??
conv2d_67_10215:	?+
conv2d_68_10231:??
conv2d_68_10233:	?+
conv2d_69_10248:??
conv2d_69_10250:	?+
conv2d_70_10273:??
conv2d_70_10275:	?+
conv2d_71_10290:??
conv2d_71_10292:	?5
conv2d_transpose_11_10302:??(
conv2d_transpose_11_10304:	?+
conv2d_72_10328:??
conv2d_72_10330:	?+
conv2d_73_10345:??
conv2d_73_10347:	?5
conv2d_transpose_12_10350:??(
conv2d_transpose_12_10352:	?+
conv2d_74_10376:??
conv2d_74_10378:	?+
conv2d_75_10393:??
conv2d_75_10395:	?4
conv2d_transpose_13_10398:@?'
conv2d_transpose_13_10400:@*
conv2d_76_10424:?@
conv2d_76_10426:@)
conv2d_77_10441:@@
conv2d_77_10443:@3
conv2d_transpose_14_10446: @'
conv2d_transpose_14_10448: )
conv2d_78_10472:@ 
conv2d_78_10474: )
conv2d_79_10489:  
conv2d_79_10491: )
conv2d_80_10506:  
conv2d_80_10508: )
conv2d_81_10522: 
conv2d_81_10524:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall?!conv2d_74/StatefulPartitionedCall?!conv2d_75/StatefulPartitionedCall?!conv2d_76/StatefulPartitionedCall?!conv2d_77/StatefulPartitionedCall?!conv2d_78/StatefulPartitionedCall?!conv2d_79/StatefulPartitionedCall?!conv2d_80/StatefulPartitionedCall?!conv2d_81/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_62_10126conv2d_62_10128*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_101252#
!conv2d_62/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_10143conv2d_63_10145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_101422#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98892"
 max_pooling2d_16/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_64_10161conv2d_64_10163*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_101602#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_10178conv2d_65_10180*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_101772#
!conv2d_65/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_99012"
 max_pooling2d_17/PartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_66_10196conv2d_66_10198*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_101952#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_10213conv2d_67_10215*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_102122#
!conv2d_67/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99132"
 max_pooling2d_18/PartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_68_10231conv2d_68_10233*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_102302#
!conv2d_68/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_10248conv2d_69_10250*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_102472#
!conv2d_69/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_102582
dropout_8/PartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99252"
 max_pooling2d_19/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_70_10273conv2d_70_10275*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_102722#
!conv2d_70/StatefulPartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0conv2d_71_10290conv2d_71_10292*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_71_layer_call_and_return_conditional_losses_102892#
!conv2d_71/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_103002
dropout_9/PartitionedCall?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_transpose_11_10302conv2d_transpose_11_10304*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_99652-
+conv2d_transpose_11/StatefulPartitionedCall?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_103142 
concatenate_11/PartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_72_10328conv2d_72_10330*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_72_layer_call_and_return_conditional_losses_103272#
!conv2d_72/StatefulPartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0conv2d_73_10345conv2d_73_10347*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_73_layer_call_and_return_conditional_losses_103442#
!conv2d_73/StatefulPartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0conv2d_transpose_12_10350conv2d_transpose_12_10352*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_100092-
+conv2d_transpose_12/StatefulPartitionedCall?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_103622 
concatenate_12/PartitionedCall?
!conv2d_74/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_74_10376conv2d_74_10378*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_74_layer_call_and_return_conditional_losses_103752#
!conv2d_74/StatefulPartitionedCall?
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCall*conv2d_74/StatefulPartitionedCall:output:0conv2d_75_10393conv2d_75_10395*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_75_layer_call_and_return_conditional_losses_103922#
!conv2d_75/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0conv2d_transpose_13_10398conv2d_transpose_13_10400*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_100532-
+conv2d_transpose_13/StatefulPartitionedCall?
concatenate_13/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????0@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_13_layer_call_and_return_conditional_losses_104102 
concatenate_13/PartitionedCall?
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0conv2d_76_10424conv2d_76_10426*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_76_layer_call_and_return_conditional_losses_104232#
!conv2d_76/StatefulPartitionedCall?
!conv2d_77/StatefulPartitionedCallStatefulPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0conv2d_77_10441conv2d_77_10443*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_77_layer_call_and_return_conditional_losses_104402#
!conv2d_77/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_77/StatefulPartitionedCall:output:0conv2d_transpose_14_10446conv2d_transpose_14_10448*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_100972-
+conv2d_transpose_14/StatefulPartitionedCall?
concatenate_14/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_14_layer_call_and_return_conditional_losses_104582 
concatenate_14/PartitionedCall?
!conv2d_78/StatefulPartitionedCallStatefulPartitionedCall'concatenate_14/PartitionedCall:output:0conv2d_78_10472conv2d_78_10474*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_78_layer_call_and_return_conditional_losses_104712#
!conv2d_78/StatefulPartitionedCall?
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCall*conv2d_78/StatefulPartitionedCall:output:0conv2d_79_10489conv2d_79_10491*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_79_layer_call_and_return_conditional_losses_104882#
!conv2d_79/StatefulPartitionedCall?
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0conv2d_80_10506conv2d_80_10508*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_80_layer_call_and_return_conditional_losses_105052#
!conv2d_80/StatefulPartitionedCall?
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0conv2d_81_10522conv2d_81_10524*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_81_layer_call_and_return_conditional_losses_105212#
!conv2d_81/StatefulPartitionedCall?
IdentityIdentity*conv2d_81/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall"^conv2d_74/StatefulPartitionedCall"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^conv2d_77/StatefulPartitionedCall"^conv2d_78/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2F
!conv2d_74/StatefulPartitionedCall!conv2d_74/StatefulPartitionedCall2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!conv2d_77/StatefulPartitionedCall!conv2d_77/StatefulPartitionedCall2F
!conv2d_78/StatefulPartitionedCall!conv2d_78/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_65_layer_call_fn_12466

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_101772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_10212

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
??
?-
__inference__wrapped_model_9883
input_12J
0model_8_conv2d_62_conv2d_readvariableop_resource: ?
1model_8_conv2d_62_biasadd_readvariableop_resource: J
0model_8_conv2d_63_conv2d_readvariableop_resource:  ?
1model_8_conv2d_63_biasadd_readvariableop_resource: J
0model_8_conv2d_64_conv2d_readvariableop_resource: @?
1model_8_conv2d_64_biasadd_readvariableop_resource:@J
0model_8_conv2d_65_conv2d_readvariableop_resource:@@?
1model_8_conv2d_65_biasadd_readvariableop_resource:@K
0model_8_conv2d_66_conv2d_readvariableop_resource:@?@
1model_8_conv2d_66_biasadd_readvariableop_resource:	?L
0model_8_conv2d_67_conv2d_readvariableop_resource:??@
1model_8_conv2d_67_biasadd_readvariableop_resource:	?L
0model_8_conv2d_68_conv2d_readvariableop_resource:??@
1model_8_conv2d_68_biasadd_readvariableop_resource:	?L
0model_8_conv2d_69_conv2d_readvariableop_resource:??@
1model_8_conv2d_69_biasadd_readvariableop_resource:	?L
0model_8_conv2d_70_conv2d_readvariableop_resource:??@
1model_8_conv2d_70_biasadd_readvariableop_resource:	?L
0model_8_conv2d_71_conv2d_readvariableop_resource:??@
1model_8_conv2d_71_biasadd_readvariableop_resource:	?`
Dmodel_8_conv2d_transpose_11_conv2d_transpose_readvariableop_resource:??J
;model_8_conv2d_transpose_11_biasadd_readvariableop_resource:	?L
0model_8_conv2d_72_conv2d_readvariableop_resource:??@
1model_8_conv2d_72_biasadd_readvariableop_resource:	?L
0model_8_conv2d_73_conv2d_readvariableop_resource:??@
1model_8_conv2d_73_biasadd_readvariableop_resource:	?`
Dmodel_8_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:??J
;model_8_conv2d_transpose_12_biasadd_readvariableop_resource:	?L
0model_8_conv2d_74_conv2d_readvariableop_resource:??@
1model_8_conv2d_74_biasadd_readvariableop_resource:	?L
0model_8_conv2d_75_conv2d_readvariableop_resource:??@
1model_8_conv2d_75_biasadd_readvariableop_resource:	?_
Dmodel_8_conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@?I
;model_8_conv2d_transpose_13_biasadd_readvariableop_resource:@K
0model_8_conv2d_76_conv2d_readvariableop_resource:?@?
1model_8_conv2d_76_biasadd_readvariableop_resource:@J
0model_8_conv2d_77_conv2d_readvariableop_resource:@@?
1model_8_conv2d_77_biasadd_readvariableop_resource:@^
Dmodel_8_conv2d_transpose_14_conv2d_transpose_readvariableop_resource: @I
;model_8_conv2d_transpose_14_biasadd_readvariableop_resource: J
0model_8_conv2d_78_conv2d_readvariableop_resource:@ ?
1model_8_conv2d_78_biasadd_readvariableop_resource: J
0model_8_conv2d_79_conv2d_readvariableop_resource:  ?
1model_8_conv2d_79_biasadd_readvariableop_resource: J
0model_8_conv2d_80_conv2d_readvariableop_resource:  ?
1model_8_conv2d_80_biasadd_readvariableop_resource: J
0model_8_conv2d_81_conv2d_readvariableop_resource: ?
1model_8_conv2d_81_biasadd_readvariableop_resource:
identity??(model_8/conv2d_62/BiasAdd/ReadVariableOp?'model_8/conv2d_62/Conv2D/ReadVariableOp?(model_8/conv2d_63/BiasAdd/ReadVariableOp?'model_8/conv2d_63/Conv2D/ReadVariableOp?(model_8/conv2d_64/BiasAdd/ReadVariableOp?'model_8/conv2d_64/Conv2D/ReadVariableOp?(model_8/conv2d_65/BiasAdd/ReadVariableOp?'model_8/conv2d_65/Conv2D/ReadVariableOp?(model_8/conv2d_66/BiasAdd/ReadVariableOp?'model_8/conv2d_66/Conv2D/ReadVariableOp?(model_8/conv2d_67/BiasAdd/ReadVariableOp?'model_8/conv2d_67/Conv2D/ReadVariableOp?(model_8/conv2d_68/BiasAdd/ReadVariableOp?'model_8/conv2d_68/Conv2D/ReadVariableOp?(model_8/conv2d_69/BiasAdd/ReadVariableOp?'model_8/conv2d_69/Conv2D/ReadVariableOp?(model_8/conv2d_70/BiasAdd/ReadVariableOp?'model_8/conv2d_70/Conv2D/ReadVariableOp?(model_8/conv2d_71/BiasAdd/ReadVariableOp?'model_8/conv2d_71/Conv2D/ReadVariableOp?(model_8/conv2d_72/BiasAdd/ReadVariableOp?'model_8/conv2d_72/Conv2D/ReadVariableOp?(model_8/conv2d_73/BiasAdd/ReadVariableOp?'model_8/conv2d_73/Conv2D/ReadVariableOp?(model_8/conv2d_74/BiasAdd/ReadVariableOp?'model_8/conv2d_74/Conv2D/ReadVariableOp?(model_8/conv2d_75/BiasAdd/ReadVariableOp?'model_8/conv2d_75/Conv2D/ReadVariableOp?(model_8/conv2d_76/BiasAdd/ReadVariableOp?'model_8/conv2d_76/Conv2D/ReadVariableOp?(model_8/conv2d_77/BiasAdd/ReadVariableOp?'model_8/conv2d_77/Conv2D/ReadVariableOp?(model_8/conv2d_78/BiasAdd/ReadVariableOp?'model_8/conv2d_78/Conv2D/ReadVariableOp?(model_8/conv2d_79/BiasAdd/ReadVariableOp?'model_8/conv2d_79/Conv2D/ReadVariableOp?(model_8/conv2d_80/BiasAdd/ReadVariableOp?'model_8/conv2d_80/Conv2D/ReadVariableOp?(model_8/conv2d_81/BiasAdd/ReadVariableOp?'model_8/conv2d_81/Conv2D/ReadVariableOp?2model_8/conv2d_transpose_11/BiasAdd/ReadVariableOp?;model_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?2model_8/conv2d_transpose_12/BiasAdd/ReadVariableOp?;model_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?2model_8/conv2d_transpose_13/BiasAdd/ReadVariableOp?;model_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?2model_8/conv2d_transpose_14/BiasAdd/ReadVariableOp?;model_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
'model_8/conv2d_62/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_8/conv2d_62/Conv2D/ReadVariableOp?
model_8/conv2d_62/Conv2DConv2Dinput_12/model_8/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
model_8/conv2d_62/Conv2D?
(model_8/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_8/conv2d_62/BiasAdd/ReadVariableOp?
model_8/conv2d_62/BiasAddBiasAdd!model_8/conv2d_62/Conv2D:output:00model_8/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_62/BiasAdd?
model_8/conv2d_62/ReluRelu"model_8/conv2d_62/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_62/Relu?
'model_8/conv2d_63/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'model_8/conv2d_63/Conv2D/ReadVariableOp?
model_8/conv2d_63/Conv2DConv2D$model_8/conv2d_62/Relu:activations:0/model_8/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
model_8/conv2d_63/Conv2D?
(model_8/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_8/conv2d_63/BiasAdd/ReadVariableOp?
model_8/conv2d_63/BiasAddBiasAdd!model_8/conv2d_63/Conv2D:output:00model_8/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_63/BiasAdd?
model_8/conv2d_63/ReluRelu"model_8/conv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_63/Relu?
 model_8/max_pooling2d_16/MaxPoolMaxPool$model_8/conv2d_63/Relu:activations:0*/
_output_shapes
:?????????0@ *
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_16/MaxPool?
'model_8/conv2d_64/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02)
'model_8/conv2d_64/Conv2D/ReadVariableOp?
model_8/conv2d_64/Conv2DConv2D)model_8/max_pooling2d_16/MaxPool:output:0/model_8/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
model_8/conv2d_64/Conv2D?
(model_8/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_8/conv2d_64/BiasAdd/ReadVariableOp?
model_8/conv2d_64/BiasAddBiasAdd!model_8/conv2d_64/Conv2D:output:00model_8/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_64/BiasAdd?
model_8/conv2d_64/ReluRelu"model_8/conv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_64/Relu?
'model_8/conv2d_65/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02)
'model_8/conv2d_65/Conv2D/ReadVariableOp?
model_8/conv2d_65/Conv2DConv2D$model_8/conv2d_64/Relu:activations:0/model_8/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
model_8/conv2d_65/Conv2D?
(model_8/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_8/conv2d_65/BiasAdd/ReadVariableOp?
model_8/conv2d_65/BiasAddBiasAdd!model_8/conv2d_65/Conv2D:output:00model_8/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_65/BiasAdd?
model_8/conv2d_65/ReluRelu"model_8/conv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_65/Relu?
 model_8/max_pooling2d_17/MaxPoolMaxPool$model_8/conv2d_65/Relu:activations:0*/
_output_shapes
:????????? @*
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_17/MaxPool?
'model_8/conv2d_66/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02)
'model_8/conv2d_66/Conv2D/ReadVariableOp?
model_8/conv2d_66/Conv2DConv2D)model_8/max_pooling2d_17/MaxPool:output:0/model_8/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
model_8/conv2d_66/Conv2D?
(model_8/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_66/BiasAdd/ReadVariableOp?
model_8/conv2d_66/BiasAddBiasAdd!model_8/conv2d_66/Conv2D:output:00model_8/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_66/BiasAdd?
model_8/conv2d_66/ReluRelu"model_8/conv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_66/Relu?
'model_8/conv2d_67/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_67/Conv2D/ReadVariableOp?
model_8/conv2d_67/Conv2DConv2D$model_8/conv2d_66/Relu:activations:0/model_8/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
model_8/conv2d_67/Conv2D?
(model_8/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_67/BiasAdd/ReadVariableOp?
model_8/conv2d_67/BiasAddBiasAdd!model_8/conv2d_67/Conv2D:output:00model_8/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_67/BiasAdd?
model_8/conv2d_67/ReluRelu"model_8/conv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_67/Relu?
 model_8/max_pooling2d_18/MaxPoolMaxPool$model_8/conv2d_67/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_18/MaxPool?
'model_8/conv2d_68/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_68_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_68/Conv2D/ReadVariableOp?
model_8/conv2d_68/Conv2DConv2D)model_8/max_pooling2d_18/MaxPool:output:0/model_8/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_8/conv2d_68/Conv2D?
(model_8/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_68/BiasAdd/ReadVariableOp?
model_8/conv2d_68/BiasAddBiasAdd!model_8/conv2d_68/Conv2D:output:00model_8/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_68/BiasAdd?
model_8/conv2d_68/ReluRelu"model_8/conv2d_68/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_68/Relu?
'model_8/conv2d_69/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_69_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_69/Conv2D/ReadVariableOp?
model_8/conv2d_69/Conv2DConv2D$model_8/conv2d_68/Relu:activations:0/model_8/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_8/conv2d_69/Conv2D?
(model_8/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_69_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_69/BiasAdd/ReadVariableOp?
model_8/conv2d_69/BiasAddBiasAdd!model_8/conv2d_69/Conv2D:output:00model_8/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_69/BiasAdd?
model_8/conv2d_69/ReluRelu"model_8/conv2d_69/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_69/Relu?
model_8/dropout_8/IdentityIdentity$model_8/conv2d_69/Relu:activations:0*
T0*0
_output_shapes
:??????????2
model_8/dropout_8/Identity?
 model_8/max_pooling2d_19/MaxPoolMaxPool#model_8/dropout_8/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2"
 model_8/max_pooling2d_19/MaxPool?
'model_8/conv2d_70/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_70_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_70/Conv2D/ReadVariableOp?
model_8/conv2d_70/Conv2DConv2D)model_8/max_pooling2d_19/MaxPool:output:0/model_8/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_8/conv2d_70/Conv2D?
(model_8/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_70_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_70/BiasAdd/ReadVariableOp?
model_8/conv2d_70/BiasAddBiasAdd!model_8/conv2d_70/Conv2D:output:00model_8/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_70/BiasAdd?
model_8/conv2d_70/ReluRelu"model_8/conv2d_70/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_70/Relu?
'model_8/conv2d_71/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_71_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_71/Conv2D/ReadVariableOp?
model_8/conv2d_71/Conv2DConv2D$model_8/conv2d_70/Relu:activations:0/model_8/conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_8/conv2d_71/Conv2D?
(model_8/conv2d_71/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_71/BiasAdd/ReadVariableOp?
model_8/conv2d_71/BiasAddBiasAdd!model_8/conv2d_71/Conv2D:output:00model_8/conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_71/BiasAdd?
model_8/conv2d_71/ReluRelu"model_8/conv2d_71/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_71/Relu?
model_8/dropout_9/IdentityIdentity$model_8/conv2d_71/Relu:activations:0*
T0*0
_output_shapes
:??????????2
model_8/dropout_9/Identity?
!model_8/conv2d_transpose_11/ShapeShape#model_8/dropout_9/Identity:output:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_11/Shape?
/model_8/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_11/strided_slice/stack?
1model_8/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_11/strided_slice/stack_1?
1model_8/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_11/strided_slice/stack_2?
)model_8/conv2d_transpose_11/strided_sliceStridedSlice*model_8/conv2d_transpose_11/Shape:output:08model_8/conv2d_transpose_11/strided_slice/stack:output:0:model_8/conv2d_transpose_11/strided_slice/stack_1:output:0:model_8/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_11/strided_slice?
#model_8/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_11/stack/1?
#model_8/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_11/stack/2?
#model_8/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2%
#model_8/conv2d_transpose_11/stack/3?
!model_8/conv2d_transpose_11/stackPack2model_8/conv2d_transpose_11/strided_slice:output:0,model_8/conv2d_transpose_11/stack/1:output:0,model_8/conv2d_transpose_11/stack/2:output:0,model_8/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_11/stack?
1model_8/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_11/strided_slice_1/stack?
3model_8/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_11/strided_slice_1/stack_1?
3model_8/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_11/strided_slice_1/stack_2?
+model_8/conv2d_transpose_11/strided_slice_1StridedSlice*model_8/conv2d_transpose_11/stack:output:0:model_8/conv2d_transpose_11/strided_slice_1/stack:output:0<model_8/conv2d_transpose_11/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_11/strided_slice_1?
;model_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02=
;model_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?
,model_8/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_11/stack:output:0Cmodel_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0#model_8/dropout_9/Identity:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2.
,model_8/conv2d_transpose_11/conv2d_transpose?
2model_8/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2model_8/conv2d_transpose_11/BiasAdd/ReadVariableOp?
#model_8/conv2d_transpose_11/BiasAddBiasAdd5model_8/conv2d_transpose_11/conv2d_transpose:output:0:model_8/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2%
#model_8/conv2d_transpose_11/BiasAdd?
"model_8/concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_11/concat/axis?
model_8/concatenate_11/concatConcatV2,model_8/conv2d_transpose_11/BiasAdd:output:0#model_8/dropout_8/Identity:output:0+model_8/concatenate_11/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
model_8/concatenate_11/concat?
'model_8/conv2d_72/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_72_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_72/Conv2D/ReadVariableOp?
model_8/conv2d_72/Conv2DConv2D&model_8/concatenate_11/concat:output:0/model_8/conv2d_72/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_8/conv2d_72/Conv2D?
(model_8/conv2d_72/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_72/BiasAdd/ReadVariableOp?
model_8/conv2d_72/BiasAddBiasAdd!model_8/conv2d_72/Conv2D:output:00model_8/conv2d_72/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_72/BiasAdd?
model_8/conv2d_72/ReluRelu"model_8/conv2d_72/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_72/Relu?
'model_8/conv2d_73/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_73_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_73/Conv2D/ReadVariableOp?
model_8/conv2d_73/Conv2DConv2D$model_8/conv2d_72/Relu:activations:0/model_8/conv2d_73/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
model_8/conv2d_73/Conv2D?
(model_8/conv2d_73/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_73_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_73/BiasAdd/ReadVariableOp?
model_8/conv2d_73/BiasAddBiasAdd!model_8/conv2d_73/Conv2D:output:00model_8/conv2d_73/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_73/BiasAdd?
model_8/conv2d_73/ReluRelu"model_8/conv2d_73/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_8/conv2d_73/Relu?
!model_8/conv2d_transpose_12/ShapeShape$model_8/conv2d_73/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_12/Shape?
/model_8/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_12/strided_slice/stack?
1model_8/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_12/strided_slice/stack_1?
1model_8/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_12/strided_slice/stack_2?
)model_8/conv2d_transpose_12/strided_sliceStridedSlice*model_8/conv2d_transpose_12/Shape:output:08model_8/conv2d_transpose_12/strided_slice/stack:output:0:model_8/conv2d_transpose_12/strided_slice/stack_1:output:0:model_8/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_12/strided_slice?
#model_8/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_8/conv2d_transpose_12/stack/1?
#model_8/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_8/conv2d_transpose_12/stack/2?
#model_8/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2%
#model_8/conv2d_transpose_12/stack/3?
!model_8/conv2d_transpose_12/stackPack2model_8/conv2d_transpose_12/strided_slice:output:0,model_8/conv2d_transpose_12/stack/1:output:0,model_8/conv2d_transpose_12/stack/2:output:0,model_8/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_12/stack?
1model_8/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_12/strided_slice_1/stack?
3model_8/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_12/strided_slice_1/stack_1?
3model_8/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_12/strided_slice_1/stack_2?
+model_8/conv2d_transpose_12/strided_slice_1StridedSlice*model_8/conv2d_transpose_12/stack:output:0:model_8/conv2d_transpose_12/strided_slice_1/stack:output:0<model_8/conv2d_transpose_12/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_12/strided_slice_1?
;model_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02=
;model_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
,model_8/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_12/stack:output:0Cmodel_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0$model_8/conv2d_73/Relu:activations:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2.
,model_8/conv2d_transpose_12/conv2d_transpose?
2model_8/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype024
2model_8/conv2d_transpose_12/BiasAdd/ReadVariableOp?
#model_8/conv2d_transpose_12/BiasAddBiasAdd5model_8/conv2d_transpose_12/conv2d_transpose:output:0:model_8/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2%
#model_8/conv2d_transpose_12/BiasAdd?
"model_8/concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_12/concat/axis?
model_8/concatenate_12/concatConcatV2,model_8/conv2d_transpose_12/BiasAdd:output:0$model_8/conv2d_67/Relu:activations:0+model_8/concatenate_12/concat/axis:output:0*
N*
T0*0
_output_shapes
:????????? ?2
model_8/concatenate_12/concat?
'model_8/conv2d_74/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_74_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_74/Conv2D/ReadVariableOp?
model_8/conv2d_74/Conv2DConv2D&model_8/concatenate_12/concat:output:0/model_8/conv2d_74/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
model_8/conv2d_74/Conv2D?
(model_8/conv2d_74/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_74_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_74/BiasAdd/ReadVariableOp?
model_8/conv2d_74/BiasAddBiasAdd!model_8/conv2d_74/Conv2D:output:00model_8/conv2d_74/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_74/BiasAdd?
model_8/conv2d_74/ReluRelu"model_8/conv2d_74/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_74/Relu?
'model_8/conv2d_75/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_75_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_8/conv2d_75/Conv2D/ReadVariableOp?
model_8/conv2d_75/Conv2DConv2D$model_8/conv2d_74/Relu:activations:0/model_8/conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
model_8/conv2d_75/Conv2D?
(model_8/conv2d_75/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_8/conv2d_75/BiasAdd/ReadVariableOp?
model_8/conv2d_75/BiasAddBiasAdd!model_8/conv2d_75/Conv2D:output:00model_8/conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_75/BiasAdd?
model_8/conv2d_75/ReluRelu"model_8/conv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
model_8/conv2d_75/Relu?
!model_8/conv2d_transpose_13/ShapeShape$model_8/conv2d_75/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_13/Shape?
/model_8/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_13/strided_slice/stack?
1model_8/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_13/strided_slice/stack_1?
1model_8/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_13/strided_slice/stack_2?
)model_8/conv2d_transpose_13/strided_sliceStridedSlice*model_8/conv2d_transpose_13/Shape:output:08model_8/conv2d_transpose_13/strided_slice/stack:output:0:model_8/conv2d_transpose_13/strided_slice/stack_1:output:0:model_8/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_13/strided_slice?
#model_8/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02%
#model_8/conv2d_transpose_13/stack/1?
#model_8/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_8/conv2d_transpose_13/stack/2?
#model_8/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_8/conv2d_transpose_13/stack/3?
!model_8/conv2d_transpose_13/stackPack2model_8/conv2d_transpose_13/strided_slice:output:0,model_8/conv2d_transpose_13/stack/1:output:0,model_8/conv2d_transpose_13/stack/2:output:0,model_8/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_13/stack?
1model_8/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_13/strided_slice_1/stack?
3model_8/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_13/strided_slice_1/stack_1?
3model_8/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_13/strided_slice_1/stack_2?
+model_8/conv2d_transpose_13/strided_slice_1StridedSlice*model_8/conv2d_transpose_13/stack:output:0:model_8/conv2d_transpose_13/strided_slice_1/stack:output:0<model_8/conv2d_transpose_13/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_13/strided_slice_1?
;model_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02=
;model_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
,model_8/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_13/stack:output:0Cmodel_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0$model_8/conv2d_75/Relu:activations:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2.
,model_8/conv2d_transpose_13/conv2d_transpose?
2model_8/conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2model_8/conv2d_transpose_13/BiasAdd/ReadVariableOp?
#model_8/conv2d_transpose_13/BiasAddBiasAdd5model_8/conv2d_transpose_13/conv2d_transpose:output:0:model_8/conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2%
#model_8/conv2d_transpose_13/BiasAdd?
"model_8/concatenate_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_13/concat/axis?
model_8/concatenate_13/concatConcatV2,model_8/conv2d_transpose_13/BiasAdd:output:0$model_8/conv2d_65/Relu:activations:0+model_8/concatenate_13/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????0@?2
model_8/concatenate_13/concat?
'model_8/conv2d_76/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_76_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'model_8/conv2d_76/Conv2D/ReadVariableOp?
model_8/conv2d_76/Conv2DConv2D&model_8/concatenate_13/concat:output:0/model_8/conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
model_8/conv2d_76/Conv2D?
(model_8/conv2d_76/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_76_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_8/conv2d_76/BiasAdd/ReadVariableOp?
model_8/conv2d_76/BiasAddBiasAdd!model_8/conv2d_76/Conv2D:output:00model_8/conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_76/BiasAdd?
model_8/conv2d_76/ReluRelu"model_8/conv2d_76/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_76/Relu?
'model_8/conv2d_77/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_77_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02)
'model_8/conv2d_77/Conv2D/ReadVariableOp?
model_8/conv2d_77/Conv2DConv2D$model_8/conv2d_76/Relu:activations:0/model_8/conv2d_77/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
model_8/conv2d_77/Conv2D?
(model_8/conv2d_77/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_77_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_8/conv2d_77/BiasAdd/ReadVariableOp?
model_8/conv2d_77/BiasAddBiasAdd!model_8/conv2d_77/Conv2D:output:00model_8/conv2d_77/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_77/BiasAdd?
model_8/conv2d_77/ReluRelu"model_8/conv2d_77/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
model_8/conv2d_77/Relu?
!model_8/conv2d_transpose_14/ShapeShape$model_8/conv2d_77/Relu:activations:0*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_14/Shape?
/model_8/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_8/conv2d_transpose_14/strided_slice/stack?
1model_8/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_14/strided_slice/stack_1?
1model_8/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_8/conv2d_transpose_14/strided_slice/stack_2?
)model_8/conv2d_transpose_14/strided_sliceStridedSlice*model_8/conv2d_transpose_14/Shape:output:08model_8/conv2d_transpose_14/strided_slice/stack:output:0:model_8/conv2d_transpose_14/strided_slice/stack_1:output:0:model_8/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_8/conv2d_transpose_14/strided_slice?
#model_8/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2%
#model_8/conv2d_transpose_14/stack/1?
#model_8/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2%
#model_8/conv2d_transpose_14/stack/2?
#model_8/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_8/conv2d_transpose_14/stack/3?
!model_8/conv2d_transpose_14/stackPack2model_8/conv2d_transpose_14/strided_slice:output:0,model_8/conv2d_transpose_14/stack/1:output:0,model_8/conv2d_transpose_14/stack/2:output:0,model_8/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_8/conv2d_transpose_14/stack?
1model_8/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_8/conv2d_transpose_14/strided_slice_1/stack?
3model_8/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_14/strided_slice_1/stack_1?
3model_8/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_8/conv2d_transpose_14/strided_slice_1/stack_2?
+model_8/conv2d_transpose_14/strided_slice_1StridedSlice*model_8/conv2d_transpose_14/stack:output:0:model_8/conv2d_transpose_14/strided_slice_1/stack:output:0<model_8/conv2d_transpose_14/strided_slice_1/stack_1:output:0<model_8/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_8/conv2d_transpose_14/strided_slice_1?
;model_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_8_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02=
;model_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
,model_8/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput*model_8/conv2d_transpose_14/stack:output:0Cmodel_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0$model_8/conv2d_77/Relu:activations:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2.
,model_8/conv2d_transpose_14/conv2d_transpose?
2model_8/conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp;model_8_conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2model_8/conv2d_transpose_14/BiasAdd/ReadVariableOp?
#model_8/conv2d_transpose_14/BiasAddBiasAdd5model_8/conv2d_transpose_14/conv2d_transpose:output:0:model_8/conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2%
#model_8/conv2d_transpose_14/BiasAdd?
"model_8/concatenate_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_8/concatenate_14/concat/axis?
model_8/concatenate_14/concatConcatV2,model_8/conv2d_transpose_14/BiasAdd:output:0$model_8/conv2d_63/Relu:activations:0+model_8/concatenate_14/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????`?@2
model_8/concatenate_14/concat?
'model_8/conv2d_78/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_78_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02)
'model_8/conv2d_78/Conv2D/ReadVariableOp?
model_8/conv2d_78/Conv2DConv2D&model_8/concatenate_14/concat:output:0/model_8/conv2d_78/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
model_8/conv2d_78/Conv2D?
(model_8/conv2d_78/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_78_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_8/conv2d_78/BiasAdd/ReadVariableOp?
model_8/conv2d_78/BiasAddBiasAdd!model_8/conv2d_78/Conv2D:output:00model_8/conv2d_78/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_78/BiasAdd?
model_8/conv2d_78/ReluRelu"model_8/conv2d_78/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_78/Relu?
'model_8/conv2d_79/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_79_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'model_8/conv2d_79/Conv2D/ReadVariableOp?
model_8/conv2d_79/Conv2DConv2D$model_8/conv2d_78/Relu:activations:0/model_8/conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
model_8/conv2d_79/Conv2D?
(model_8/conv2d_79/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_79_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_8/conv2d_79/BiasAdd/ReadVariableOp?
model_8/conv2d_79/BiasAddBiasAdd!model_8/conv2d_79/Conv2D:output:00model_8/conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_79/BiasAdd?
model_8/conv2d_79/ReluRelu"model_8/conv2d_79/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_79/Relu?
'model_8/conv2d_80/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_80_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'model_8/conv2d_80/Conv2D/ReadVariableOp?
model_8/conv2d_80/Conv2DConv2D$model_8/conv2d_79/Relu:activations:0/model_8/conv2d_80/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
model_8/conv2d_80/Conv2D?
(model_8/conv2d_80/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_8/conv2d_80/BiasAdd/ReadVariableOp?
model_8/conv2d_80/BiasAddBiasAdd!model_8/conv2d_80/Conv2D:output:00model_8/conv2d_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_80/BiasAdd?
model_8/conv2d_80/ReluRelu"model_8/conv2d_80/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
model_8/conv2d_80/Relu?
'model_8/conv2d_81/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_81_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_8/conv2d_81/Conv2D/ReadVariableOp?
model_8/conv2d_81/Conv2DConv2D$model_8/conv2d_80/Relu:activations:0/model_8/conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?*
paddingSAME*
strides
2
model_8/conv2d_81/Conv2D?
(model_8/conv2d_81/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_8/conv2d_81/BiasAdd/ReadVariableOp?
model_8/conv2d_81/BiasAddBiasAdd!model_8/conv2d_81/Conv2D:output:00model_8/conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?2
model_8/conv2d_81/BiasAdd?
IdentityIdentity"model_8/conv2d_81/BiasAdd:output:0)^model_8/conv2d_62/BiasAdd/ReadVariableOp(^model_8/conv2d_62/Conv2D/ReadVariableOp)^model_8/conv2d_63/BiasAdd/ReadVariableOp(^model_8/conv2d_63/Conv2D/ReadVariableOp)^model_8/conv2d_64/BiasAdd/ReadVariableOp(^model_8/conv2d_64/Conv2D/ReadVariableOp)^model_8/conv2d_65/BiasAdd/ReadVariableOp(^model_8/conv2d_65/Conv2D/ReadVariableOp)^model_8/conv2d_66/BiasAdd/ReadVariableOp(^model_8/conv2d_66/Conv2D/ReadVariableOp)^model_8/conv2d_67/BiasAdd/ReadVariableOp(^model_8/conv2d_67/Conv2D/ReadVariableOp)^model_8/conv2d_68/BiasAdd/ReadVariableOp(^model_8/conv2d_68/Conv2D/ReadVariableOp)^model_8/conv2d_69/BiasAdd/ReadVariableOp(^model_8/conv2d_69/Conv2D/ReadVariableOp)^model_8/conv2d_70/BiasAdd/ReadVariableOp(^model_8/conv2d_70/Conv2D/ReadVariableOp)^model_8/conv2d_71/BiasAdd/ReadVariableOp(^model_8/conv2d_71/Conv2D/ReadVariableOp)^model_8/conv2d_72/BiasAdd/ReadVariableOp(^model_8/conv2d_72/Conv2D/ReadVariableOp)^model_8/conv2d_73/BiasAdd/ReadVariableOp(^model_8/conv2d_73/Conv2D/ReadVariableOp)^model_8/conv2d_74/BiasAdd/ReadVariableOp(^model_8/conv2d_74/Conv2D/ReadVariableOp)^model_8/conv2d_75/BiasAdd/ReadVariableOp(^model_8/conv2d_75/Conv2D/ReadVariableOp)^model_8/conv2d_76/BiasAdd/ReadVariableOp(^model_8/conv2d_76/Conv2D/ReadVariableOp)^model_8/conv2d_77/BiasAdd/ReadVariableOp(^model_8/conv2d_77/Conv2D/ReadVariableOp)^model_8/conv2d_78/BiasAdd/ReadVariableOp(^model_8/conv2d_78/Conv2D/ReadVariableOp)^model_8/conv2d_79/BiasAdd/ReadVariableOp(^model_8/conv2d_79/Conv2D/ReadVariableOp)^model_8/conv2d_80/BiasAdd/ReadVariableOp(^model_8/conv2d_80/Conv2D/ReadVariableOp)^model_8/conv2d_81/BiasAdd/ReadVariableOp(^model_8/conv2d_81/Conv2D/ReadVariableOp3^model_8/conv2d_transpose_11/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOp3^model_8/conv2d_transpose_12/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOp3^model_8/conv2d_transpose_13/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOp3^model_8/conv2d_transpose_14/BiasAdd/ReadVariableOp<^model_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(model_8/conv2d_62/BiasAdd/ReadVariableOp(model_8/conv2d_62/BiasAdd/ReadVariableOp2R
'model_8/conv2d_62/Conv2D/ReadVariableOp'model_8/conv2d_62/Conv2D/ReadVariableOp2T
(model_8/conv2d_63/BiasAdd/ReadVariableOp(model_8/conv2d_63/BiasAdd/ReadVariableOp2R
'model_8/conv2d_63/Conv2D/ReadVariableOp'model_8/conv2d_63/Conv2D/ReadVariableOp2T
(model_8/conv2d_64/BiasAdd/ReadVariableOp(model_8/conv2d_64/BiasAdd/ReadVariableOp2R
'model_8/conv2d_64/Conv2D/ReadVariableOp'model_8/conv2d_64/Conv2D/ReadVariableOp2T
(model_8/conv2d_65/BiasAdd/ReadVariableOp(model_8/conv2d_65/BiasAdd/ReadVariableOp2R
'model_8/conv2d_65/Conv2D/ReadVariableOp'model_8/conv2d_65/Conv2D/ReadVariableOp2T
(model_8/conv2d_66/BiasAdd/ReadVariableOp(model_8/conv2d_66/BiasAdd/ReadVariableOp2R
'model_8/conv2d_66/Conv2D/ReadVariableOp'model_8/conv2d_66/Conv2D/ReadVariableOp2T
(model_8/conv2d_67/BiasAdd/ReadVariableOp(model_8/conv2d_67/BiasAdd/ReadVariableOp2R
'model_8/conv2d_67/Conv2D/ReadVariableOp'model_8/conv2d_67/Conv2D/ReadVariableOp2T
(model_8/conv2d_68/BiasAdd/ReadVariableOp(model_8/conv2d_68/BiasAdd/ReadVariableOp2R
'model_8/conv2d_68/Conv2D/ReadVariableOp'model_8/conv2d_68/Conv2D/ReadVariableOp2T
(model_8/conv2d_69/BiasAdd/ReadVariableOp(model_8/conv2d_69/BiasAdd/ReadVariableOp2R
'model_8/conv2d_69/Conv2D/ReadVariableOp'model_8/conv2d_69/Conv2D/ReadVariableOp2T
(model_8/conv2d_70/BiasAdd/ReadVariableOp(model_8/conv2d_70/BiasAdd/ReadVariableOp2R
'model_8/conv2d_70/Conv2D/ReadVariableOp'model_8/conv2d_70/Conv2D/ReadVariableOp2T
(model_8/conv2d_71/BiasAdd/ReadVariableOp(model_8/conv2d_71/BiasAdd/ReadVariableOp2R
'model_8/conv2d_71/Conv2D/ReadVariableOp'model_8/conv2d_71/Conv2D/ReadVariableOp2T
(model_8/conv2d_72/BiasAdd/ReadVariableOp(model_8/conv2d_72/BiasAdd/ReadVariableOp2R
'model_8/conv2d_72/Conv2D/ReadVariableOp'model_8/conv2d_72/Conv2D/ReadVariableOp2T
(model_8/conv2d_73/BiasAdd/ReadVariableOp(model_8/conv2d_73/BiasAdd/ReadVariableOp2R
'model_8/conv2d_73/Conv2D/ReadVariableOp'model_8/conv2d_73/Conv2D/ReadVariableOp2T
(model_8/conv2d_74/BiasAdd/ReadVariableOp(model_8/conv2d_74/BiasAdd/ReadVariableOp2R
'model_8/conv2d_74/Conv2D/ReadVariableOp'model_8/conv2d_74/Conv2D/ReadVariableOp2T
(model_8/conv2d_75/BiasAdd/ReadVariableOp(model_8/conv2d_75/BiasAdd/ReadVariableOp2R
'model_8/conv2d_75/Conv2D/ReadVariableOp'model_8/conv2d_75/Conv2D/ReadVariableOp2T
(model_8/conv2d_76/BiasAdd/ReadVariableOp(model_8/conv2d_76/BiasAdd/ReadVariableOp2R
'model_8/conv2d_76/Conv2D/ReadVariableOp'model_8/conv2d_76/Conv2D/ReadVariableOp2T
(model_8/conv2d_77/BiasAdd/ReadVariableOp(model_8/conv2d_77/BiasAdd/ReadVariableOp2R
'model_8/conv2d_77/Conv2D/ReadVariableOp'model_8/conv2d_77/Conv2D/ReadVariableOp2T
(model_8/conv2d_78/BiasAdd/ReadVariableOp(model_8/conv2d_78/BiasAdd/ReadVariableOp2R
'model_8/conv2d_78/Conv2D/ReadVariableOp'model_8/conv2d_78/Conv2D/ReadVariableOp2T
(model_8/conv2d_79/BiasAdd/ReadVariableOp(model_8/conv2d_79/BiasAdd/ReadVariableOp2R
'model_8/conv2d_79/Conv2D/ReadVariableOp'model_8/conv2d_79/Conv2D/ReadVariableOp2T
(model_8/conv2d_80/BiasAdd/ReadVariableOp(model_8/conv2d_80/BiasAdd/ReadVariableOp2R
'model_8/conv2d_80/Conv2D/ReadVariableOp'model_8/conv2d_80/Conv2D/ReadVariableOp2T
(model_8/conv2d_81/BiasAdd/ReadVariableOp(model_8/conv2d_81/BiasAdd/ReadVariableOp2R
'model_8/conv2d_81/Conv2D/ReadVariableOp'model_8/conv2d_81/Conv2D/ReadVariableOp2h
2model_8/conv2d_transpose_11/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_11/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2h
2model_8/conv2d_transpose_12/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_12/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2h
2model_8/conv2d_transpose_13/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_13/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2h
2model_8/conv2d_transpose_14/BiasAdd/ReadVariableOp2model_8/conv2d_transpose_14/BiasAdd/ReadVariableOp2z
;model_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOp;model_8/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:Z V
0
_output_shapes
:?????????`?
"
_user_specified_name
input_12
?
?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_10177

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_9913

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_10247

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_conv2d_81_layer_call_and_return_conditional_losses_12902

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
s
I__inference_concatenate_13_layer_call_and_return_conditional_losses_10410

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????0@?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????0@?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????0@@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_75_layer_call_and_return_conditional_losses_10392

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_80_layer_call_fn_12872

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_80_layer_call_and_return_conditional_losses_105052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_62_layer_call_fn_12406

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_101252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_10230

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
u
I__inference_concatenate_12_layer_call_and_return_conditional_losses_12717
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:????????? ?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:????????? ?:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:????????? ?
"
_user_specified_name
inputs/1
?
K
/__inference_max_pooling2d_16_layer_call_fn_9895

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98892
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_12651

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_77_layer_call_and_return_conditional_losses_10440

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_13_layer_call_fn_10063

inputs"
unknown:@?
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_100532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_10300

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_74_layer_call_and_return_conditional_losses_12737

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_12604

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_78_layer_call_fn_12832

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_78_layer_call_and_return_conditional_losses_104712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`?@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`?@
 
_user_specified_nameinputs
?
s
I__inference_concatenate_12_layer_call_and_return_conditional_losses_10362

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:????????? ?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:????????? ?:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_79_layer_call_fn_12852

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_79_layer_call_and_return_conditional_losses_104882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_80_layer_call_and_return_conditional_losses_10505

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
??
?
B__inference_model_8_layer_call_and_return_conditional_losses_11138

inputs)
conv2d_62_11007: 
conv2d_62_11009: )
conv2d_63_11012:  
conv2d_63_11014: )
conv2d_64_11018: @
conv2d_64_11020:@)
conv2d_65_11023:@@
conv2d_65_11025:@*
conv2d_66_11029:@?
conv2d_66_11031:	?+
conv2d_67_11034:??
conv2d_67_11036:	?+
conv2d_68_11040:??
conv2d_68_11042:	?+
conv2d_69_11045:??
conv2d_69_11047:	?+
conv2d_70_11052:??
conv2d_70_11054:	?+
conv2d_71_11057:??
conv2d_71_11059:	?5
conv2d_transpose_11_11063:??(
conv2d_transpose_11_11065:	?+
conv2d_72_11069:??
conv2d_72_11071:	?+
conv2d_73_11074:??
conv2d_73_11076:	?5
conv2d_transpose_12_11079:??(
conv2d_transpose_12_11081:	?+
conv2d_74_11085:??
conv2d_74_11087:	?+
conv2d_75_11090:??
conv2d_75_11092:	?4
conv2d_transpose_13_11095:@?'
conv2d_transpose_13_11097:@*
conv2d_76_11101:?@
conv2d_76_11103:@)
conv2d_77_11106:@@
conv2d_77_11108:@3
conv2d_transpose_14_11111: @'
conv2d_transpose_14_11113: )
conv2d_78_11117:@ 
conv2d_78_11119: )
conv2d_79_11122:  
conv2d_79_11124: )
conv2d_80_11127:  
conv2d_80_11129: )
conv2d_81_11132: 
conv2d_81_11134:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall?!conv2d_74/StatefulPartitionedCall?!conv2d_75/StatefulPartitionedCall?!conv2d_76/StatefulPartitionedCall?!conv2d_77/StatefulPartitionedCall?!conv2d_78/StatefulPartitionedCall?!conv2d_79/StatefulPartitionedCall?!conv2d_80/StatefulPartitionedCall?!conv2d_81/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_62_11007conv2d_62_11009*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_101252#
!conv2d_62/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_11012conv2d_63_11014*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_101422#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98892"
 max_pooling2d_16/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_64_11018conv2d_64_11020*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_101602#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_11023conv2d_65_11025*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_101772#
!conv2d_65/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_99012"
 max_pooling2d_17/PartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_66_11029conv2d_66_11031*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_101952#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_11034conv2d_67_11036*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_102122#
!conv2d_67/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99132"
 max_pooling2d_18/PartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_68_11040conv2d_68_11042*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_102302#
!conv2d_68/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_11045conv2d_69_11047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_102472#
!conv2d_69/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_108182#
!dropout_8/StatefulPartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99252"
 max_pooling2d_19/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_70_11052conv2d_70_11054*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_102722#
!conv2d_70/StatefulPartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0conv2d_71_11057conv2d_71_11059*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_71_layer_call_and_return_conditional_losses_102892#
!conv2d_71/StatefulPartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_107752#
!dropout_9/StatefulPartitionedCall?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_transpose_11_11063conv2d_transpose_11_11065*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_99652-
+conv2d_transpose_11/StatefulPartitionedCall?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_103142 
concatenate_11/PartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_72_11069conv2d_72_11071*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_72_layer_call_and_return_conditional_losses_103272#
!conv2d_72/StatefulPartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0conv2d_73_11074conv2d_73_11076*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_73_layer_call_and_return_conditional_losses_103442#
!conv2d_73/StatefulPartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0conv2d_transpose_12_11079conv2d_transpose_12_11081*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_100092-
+conv2d_transpose_12/StatefulPartitionedCall?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_103622 
concatenate_12/PartitionedCall?
!conv2d_74/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_74_11085conv2d_74_11087*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_74_layer_call_and_return_conditional_losses_103752#
!conv2d_74/StatefulPartitionedCall?
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCall*conv2d_74/StatefulPartitionedCall:output:0conv2d_75_11090conv2d_75_11092*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_75_layer_call_and_return_conditional_losses_103922#
!conv2d_75/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0conv2d_transpose_13_11095conv2d_transpose_13_11097*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_100532-
+conv2d_transpose_13/StatefulPartitionedCall?
concatenate_13/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????0@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_13_layer_call_and_return_conditional_losses_104102 
concatenate_13/PartitionedCall?
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0conv2d_76_11101conv2d_76_11103*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_76_layer_call_and_return_conditional_losses_104232#
!conv2d_76/StatefulPartitionedCall?
!conv2d_77/StatefulPartitionedCallStatefulPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0conv2d_77_11106conv2d_77_11108*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_77_layer_call_and_return_conditional_losses_104402#
!conv2d_77/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_77/StatefulPartitionedCall:output:0conv2d_transpose_14_11111conv2d_transpose_14_11113*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_100972-
+conv2d_transpose_14/StatefulPartitionedCall?
concatenate_14/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_14_layer_call_and_return_conditional_losses_104582 
concatenate_14/PartitionedCall?
!conv2d_78/StatefulPartitionedCallStatefulPartitionedCall'concatenate_14/PartitionedCall:output:0conv2d_78_11117conv2d_78_11119*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_78_layer_call_and_return_conditional_losses_104712#
!conv2d_78/StatefulPartitionedCall?
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCall*conv2d_78/StatefulPartitionedCall:output:0conv2d_79_11122conv2d_79_11124*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_79_layer_call_and_return_conditional_losses_104882#
!conv2d_79/StatefulPartitionedCall?
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0conv2d_80_11127conv2d_80_11129*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_80_layer_call_and_return_conditional_losses_105052#
!conv2d_80/StatefulPartitionedCall?
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0conv2d_81_11132conv2d_81_11134*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_81_layer_call_and_return_conditional_losses_105212#
!conv2d_81/StatefulPartitionedCall?
IdentityIdentity*conv2d_81/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall"^conv2d_74/StatefulPartitionedCall"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^conv2d_77/StatefulPartitionedCall"^conv2d_78/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2F
!conv2d_74/StatefulPartitionedCall!conv2d_74/StatefulPartitionedCall2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!conv2d_77/StatefulPartitionedCall!conv2d_77/StatefulPartitionedCall2F
!conv2d_78/StatefulPartitionedCall!conv2d_78/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_72_layer_call_and_return_conditional_losses_12684

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
B__inference_model_8_layer_call_and_return_conditional_losses_11606
input_12)
conv2d_62_11475: 
conv2d_62_11477: )
conv2d_63_11480:  
conv2d_63_11482: )
conv2d_64_11486: @
conv2d_64_11488:@)
conv2d_65_11491:@@
conv2d_65_11493:@*
conv2d_66_11497:@?
conv2d_66_11499:	?+
conv2d_67_11502:??
conv2d_67_11504:	?+
conv2d_68_11508:??
conv2d_68_11510:	?+
conv2d_69_11513:??
conv2d_69_11515:	?+
conv2d_70_11520:??
conv2d_70_11522:	?+
conv2d_71_11525:??
conv2d_71_11527:	?5
conv2d_transpose_11_11531:??(
conv2d_transpose_11_11533:	?+
conv2d_72_11537:??
conv2d_72_11539:	?+
conv2d_73_11542:??
conv2d_73_11544:	?5
conv2d_transpose_12_11547:??(
conv2d_transpose_12_11549:	?+
conv2d_74_11553:??
conv2d_74_11555:	?+
conv2d_75_11558:??
conv2d_75_11560:	?4
conv2d_transpose_13_11563:@?'
conv2d_transpose_13_11565:@*
conv2d_76_11569:?@
conv2d_76_11571:@)
conv2d_77_11574:@@
conv2d_77_11576:@3
conv2d_transpose_14_11579: @'
conv2d_transpose_14_11581: )
conv2d_78_11585:@ 
conv2d_78_11587: )
conv2d_79_11590:  
conv2d_79_11592: )
conv2d_80_11595:  
conv2d_80_11597: )
conv2d_81_11600: 
conv2d_81_11602:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall?!conv2d_74/StatefulPartitionedCall?!conv2d_75/StatefulPartitionedCall?!conv2d_76/StatefulPartitionedCall?!conv2d_77/StatefulPartitionedCall?!conv2d_78/StatefulPartitionedCall?!conv2d_79/StatefulPartitionedCall?!conv2d_80/StatefulPartitionedCall?!conv2d_81/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_62_11475conv2d_62_11477*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_101252#
!conv2d_62/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_11480conv2d_63_11482*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_101422#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98892"
 max_pooling2d_16/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_64_11486conv2d_64_11488*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_101602#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_11491conv2d_65_11493*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_101772#
!conv2d_65/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_99012"
 max_pooling2d_17/PartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_66_11497conv2d_66_11499*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_101952#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_11502conv2d_67_11504*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_102122#
!conv2d_67/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99132"
 max_pooling2d_18/PartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_68_11508conv2d_68_11510*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_102302#
!conv2d_68/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_11513conv2d_69_11515*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_102472#
!conv2d_69/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_108182#
!dropout_8/StatefulPartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99252"
 max_pooling2d_19/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_70_11520conv2d_70_11522*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_102722#
!conv2d_70/StatefulPartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0conv2d_71_11525conv2d_71_11527*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_71_layer_call_and_return_conditional_losses_102892#
!conv2d_71/StatefulPartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_107752#
!dropout_9/StatefulPartitionedCall?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_transpose_11_11531conv2d_transpose_11_11533*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_99652-
+conv2d_transpose_11/StatefulPartitionedCall?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_103142 
concatenate_11/PartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_72_11537conv2d_72_11539*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_72_layer_call_and_return_conditional_losses_103272#
!conv2d_72/StatefulPartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0conv2d_73_11542conv2d_73_11544*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_73_layer_call_and_return_conditional_losses_103442#
!conv2d_73/StatefulPartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0conv2d_transpose_12_11547conv2d_transpose_12_11549*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_100092-
+conv2d_transpose_12/StatefulPartitionedCall?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_103622 
concatenate_12/PartitionedCall?
!conv2d_74/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_74_11553conv2d_74_11555*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_74_layer_call_and_return_conditional_losses_103752#
!conv2d_74/StatefulPartitionedCall?
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCall*conv2d_74/StatefulPartitionedCall:output:0conv2d_75_11558conv2d_75_11560*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_75_layer_call_and_return_conditional_losses_103922#
!conv2d_75/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0conv2d_transpose_13_11563conv2d_transpose_13_11565*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_100532-
+conv2d_transpose_13/StatefulPartitionedCall?
concatenate_13/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????0@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_13_layer_call_and_return_conditional_losses_104102 
concatenate_13/PartitionedCall?
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0conv2d_76_11569conv2d_76_11571*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_76_layer_call_and_return_conditional_losses_104232#
!conv2d_76/StatefulPartitionedCall?
!conv2d_77/StatefulPartitionedCallStatefulPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0conv2d_77_11574conv2d_77_11576*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_77_layer_call_and_return_conditional_losses_104402#
!conv2d_77/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_77/StatefulPartitionedCall:output:0conv2d_transpose_14_11579conv2d_transpose_14_11581*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_100972-
+conv2d_transpose_14/StatefulPartitionedCall?
concatenate_14/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_14_layer_call_and_return_conditional_losses_104582 
concatenate_14/PartitionedCall?
!conv2d_78/StatefulPartitionedCallStatefulPartitionedCall'concatenate_14/PartitionedCall:output:0conv2d_78_11585conv2d_78_11587*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_78_layer_call_and_return_conditional_losses_104712#
!conv2d_78/StatefulPartitionedCall?
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCall*conv2d_78/StatefulPartitionedCall:output:0conv2d_79_11590conv2d_79_11592*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_79_layer_call_and_return_conditional_losses_104882#
!conv2d_79/StatefulPartitionedCall?
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0conv2d_80_11595conv2d_80_11597*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_80_layer_call_and_return_conditional_losses_105052#
!conv2d_80/StatefulPartitionedCall?
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0conv2d_81_11600conv2d_81_11602*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_81_layer_call_and_return_conditional_losses_105212#
!conv2d_81/StatefulPartitionedCall?
IdentityIdentity*conv2d_81/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall"^conv2d_74/StatefulPartitionedCall"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^conv2d_77/StatefulPartitionedCall"^conv2d_78/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2F
!conv2d_74/StatefulPartitionedCall!conv2d_74/StatefulPartitionedCall2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!conv2d_77/StatefulPartitionedCall!conv2d_77/StatefulPartitionedCall2F
!conv2d_78/StatefulPartitionedCall!conv2d_78/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:Z V
0
_output_shapes
:?????????`?
"
_user_specified_name
input_12
?
?
)__inference_conv2d_64_layer_call_fn_12446

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_101602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0@ 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_68_layer_call_fn_12526

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_102302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_10125

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_71_layer_call_and_return_conditional_losses_10289

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?@
__inference__traced_save_13384
file_prefix/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop/
+savev2_conv2d_65_kernel_read_readvariableop-
)savev2_conv2d_65_bias_read_readvariableop/
+savev2_conv2d_66_kernel_read_readvariableop-
)savev2_conv2d_66_bias_read_readvariableop/
+savev2_conv2d_67_kernel_read_readvariableop-
)savev2_conv2d_67_bias_read_readvariableop/
+savev2_conv2d_68_kernel_read_readvariableop-
)savev2_conv2d_68_bias_read_readvariableop/
+savev2_conv2d_69_kernel_read_readvariableop-
)savev2_conv2d_69_bias_read_readvariableop/
+savev2_conv2d_70_kernel_read_readvariableop-
)savev2_conv2d_70_bias_read_readvariableop/
+savev2_conv2d_71_kernel_read_readvariableop-
)savev2_conv2d_71_bias_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop7
3savev2_conv2d_transpose_11_bias_read_readvariableop/
+savev2_conv2d_72_kernel_read_readvariableop-
)savev2_conv2d_72_bias_read_readvariableop/
+savev2_conv2d_73_kernel_read_readvariableop-
)savev2_conv2d_73_bias_read_readvariableop9
5savev2_conv2d_transpose_12_kernel_read_readvariableop7
3savev2_conv2d_transpose_12_bias_read_readvariableop/
+savev2_conv2d_74_kernel_read_readvariableop-
)savev2_conv2d_74_bias_read_readvariableop/
+savev2_conv2d_75_kernel_read_readvariableop-
)savev2_conv2d_75_bias_read_readvariableop9
5savev2_conv2d_transpose_13_kernel_read_readvariableop7
3savev2_conv2d_transpose_13_bias_read_readvariableop/
+savev2_conv2d_76_kernel_read_readvariableop-
)savev2_conv2d_76_bias_read_readvariableop/
+savev2_conv2d_77_kernel_read_readvariableop-
)savev2_conv2d_77_bias_read_readvariableop9
5savev2_conv2d_transpose_14_kernel_read_readvariableop7
3savev2_conv2d_transpose_14_bias_read_readvariableop/
+savev2_conv2d_78_kernel_read_readvariableop-
)savev2_conv2d_78_bias_read_readvariableop/
+savev2_conv2d_79_kernel_read_readvariableop-
)savev2_conv2d_79_bias_read_readvariableop/
+savev2_conv2d_80_kernel_read_readvariableop-
)savev2_conv2d_80_bias_read_readvariableop/
+savev2_conv2d_81_kernel_read_readvariableop-
)savev2_conv2d_81_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop6
2savev2_adam_conv2d_63_kernel_m_read_readvariableop4
0savev2_adam_conv2d_63_bias_m_read_readvariableop6
2savev2_adam_conv2d_64_kernel_m_read_readvariableop4
0savev2_adam_conv2d_64_bias_m_read_readvariableop6
2savev2_adam_conv2d_65_kernel_m_read_readvariableop4
0savev2_adam_conv2d_65_bias_m_read_readvariableop6
2savev2_adam_conv2d_66_kernel_m_read_readvariableop4
0savev2_adam_conv2d_66_bias_m_read_readvariableop6
2savev2_adam_conv2d_67_kernel_m_read_readvariableop4
0savev2_adam_conv2d_67_bias_m_read_readvariableop6
2savev2_adam_conv2d_68_kernel_m_read_readvariableop4
0savev2_adam_conv2d_68_bias_m_read_readvariableop6
2savev2_adam_conv2d_69_kernel_m_read_readvariableop4
0savev2_adam_conv2d_69_bias_m_read_readvariableop6
2savev2_adam_conv2d_70_kernel_m_read_readvariableop4
0savev2_adam_conv2d_70_bias_m_read_readvariableop6
2savev2_adam_conv2d_71_kernel_m_read_readvariableop4
0savev2_adam_conv2d_71_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop6
2savev2_adam_conv2d_72_kernel_m_read_readvariableop4
0savev2_adam_conv2d_72_bias_m_read_readvariableop6
2savev2_adam_conv2d_73_kernel_m_read_readvariableop4
0savev2_adam_conv2d_73_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_74_kernel_m_read_readvariableop4
0savev2_adam_conv2d_74_bias_m_read_readvariableop6
2savev2_adam_conv2d_75_kernel_m_read_readvariableop4
0savev2_adam_conv2d_75_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_13_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_76_kernel_m_read_readvariableop4
0savev2_adam_conv2d_76_bias_m_read_readvariableop6
2savev2_adam_conv2d_77_kernel_m_read_readvariableop4
0savev2_adam_conv2d_77_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_14_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_14_bias_m_read_readvariableop6
2savev2_adam_conv2d_78_kernel_m_read_readvariableop4
0savev2_adam_conv2d_78_bias_m_read_readvariableop6
2savev2_adam_conv2d_79_kernel_m_read_readvariableop4
0savev2_adam_conv2d_79_bias_m_read_readvariableop6
2savev2_adam_conv2d_80_kernel_m_read_readvariableop4
0savev2_adam_conv2d_80_bias_m_read_readvariableop6
2savev2_adam_conv2d_81_kernel_m_read_readvariableop4
0savev2_adam_conv2d_81_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop6
2savev2_adam_conv2d_63_kernel_v_read_readvariableop4
0savev2_adam_conv2d_63_bias_v_read_readvariableop6
2savev2_adam_conv2d_64_kernel_v_read_readvariableop4
0savev2_adam_conv2d_64_bias_v_read_readvariableop6
2savev2_adam_conv2d_65_kernel_v_read_readvariableop4
0savev2_adam_conv2d_65_bias_v_read_readvariableop6
2savev2_adam_conv2d_66_kernel_v_read_readvariableop4
0savev2_adam_conv2d_66_bias_v_read_readvariableop6
2savev2_adam_conv2d_67_kernel_v_read_readvariableop4
0savev2_adam_conv2d_67_bias_v_read_readvariableop6
2savev2_adam_conv2d_68_kernel_v_read_readvariableop4
0savev2_adam_conv2d_68_bias_v_read_readvariableop6
2savev2_adam_conv2d_69_kernel_v_read_readvariableop4
0savev2_adam_conv2d_69_bias_v_read_readvariableop6
2savev2_adam_conv2d_70_kernel_v_read_readvariableop4
0savev2_adam_conv2d_70_bias_v_read_readvariableop6
2savev2_adam_conv2d_71_kernel_v_read_readvariableop4
0savev2_adam_conv2d_71_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop6
2savev2_adam_conv2d_72_kernel_v_read_readvariableop4
0savev2_adam_conv2d_72_bias_v_read_readvariableop6
2savev2_adam_conv2d_73_kernel_v_read_readvariableop4
0savev2_adam_conv2d_73_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_12_bias_v_read_readvariableop6
2savev2_adam_conv2d_74_kernel_v_read_readvariableop4
0savev2_adam_conv2d_74_bias_v_read_readvariableop6
2savev2_adam_conv2d_75_kernel_v_read_readvariableop4
0savev2_adam_conv2d_75_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_13_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_13_bias_v_read_readvariableop6
2savev2_adam_conv2d_76_kernel_v_read_readvariableop4
0savev2_adam_conv2d_76_bias_v_read_readvariableop6
2savev2_adam_conv2d_77_kernel_v_read_readvariableop4
0savev2_adam_conv2d_77_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_14_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_14_bias_v_read_readvariableop6
2savev2_adam_conv2d_78_kernel_v_read_readvariableop4
0savev2_adam_conv2d_78_bias_v_read_readvariableop6
2savev2_adam_conv2d_79_kernel_v_read_readvariableop4
0savev2_adam_conv2d_79_bias_v_read_readvariableop6
2savev2_adam_conv2d_80_kernel_v_read_readvariableop4
0savev2_adam_conv2d_80_bias_v_read_readvariableop6
2savev2_adam_conv2d_81_kernel_v_read_readvariableop4
0savev2_adam_conv2d_81_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?X
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?W
value?WB?W?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?=
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop+savev2_conv2d_65_kernel_read_readvariableop)savev2_conv2d_65_bias_read_readvariableop+savev2_conv2d_66_kernel_read_readvariableop)savev2_conv2d_66_bias_read_readvariableop+savev2_conv2d_67_kernel_read_readvariableop)savev2_conv2d_67_bias_read_readvariableop+savev2_conv2d_68_kernel_read_readvariableop)savev2_conv2d_68_bias_read_readvariableop+savev2_conv2d_69_kernel_read_readvariableop)savev2_conv2d_69_bias_read_readvariableop+savev2_conv2d_70_kernel_read_readvariableop)savev2_conv2d_70_bias_read_readvariableop+savev2_conv2d_71_kernel_read_readvariableop)savev2_conv2d_71_bias_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop3savev2_conv2d_transpose_11_bias_read_readvariableop+savev2_conv2d_72_kernel_read_readvariableop)savev2_conv2d_72_bias_read_readvariableop+savev2_conv2d_73_kernel_read_readvariableop)savev2_conv2d_73_bias_read_readvariableop5savev2_conv2d_transpose_12_kernel_read_readvariableop3savev2_conv2d_transpose_12_bias_read_readvariableop+savev2_conv2d_74_kernel_read_readvariableop)savev2_conv2d_74_bias_read_readvariableop+savev2_conv2d_75_kernel_read_readvariableop)savev2_conv2d_75_bias_read_readvariableop5savev2_conv2d_transpose_13_kernel_read_readvariableop3savev2_conv2d_transpose_13_bias_read_readvariableop+savev2_conv2d_76_kernel_read_readvariableop)savev2_conv2d_76_bias_read_readvariableop+savev2_conv2d_77_kernel_read_readvariableop)savev2_conv2d_77_bias_read_readvariableop5savev2_conv2d_transpose_14_kernel_read_readvariableop3savev2_conv2d_transpose_14_bias_read_readvariableop+savev2_conv2d_78_kernel_read_readvariableop)savev2_conv2d_78_bias_read_readvariableop+savev2_conv2d_79_kernel_read_readvariableop)savev2_conv2d_79_bias_read_readvariableop+savev2_conv2d_80_kernel_read_readvariableop)savev2_conv2d_80_bias_read_readvariableop+savev2_conv2d_81_kernel_read_readvariableop)savev2_conv2d_81_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop2savev2_adam_conv2d_63_kernel_m_read_readvariableop0savev2_adam_conv2d_63_bias_m_read_readvariableop2savev2_adam_conv2d_64_kernel_m_read_readvariableop0savev2_adam_conv2d_64_bias_m_read_readvariableop2savev2_adam_conv2d_65_kernel_m_read_readvariableop0savev2_adam_conv2d_65_bias_m_read_readvariableop2savev2_adam_conv2d_66_kernel_m_read_readvariableop0savev2_adam_conv2d_66_bias_m_read_readvariableop2savev2_adam_conv2d_67_kernel_m_read_readvariableop0savev2_adam_conv2d_67_bias_m_read_readvariableop2savev2_adam_conv2d_68_kernel_m_read_readvariableop0savev2_adam_conv2d_68_bias_m_read_readvariableop2savev2_adam_conv2d_69_kernel_m_read_readvariableop0savev2_adam_conv2d_69_bias_m_read_readvariableop2savev2_adam_conv2d_70_kernel_m_read_readvariableop0savev2_adam_conv2d_70_bias_m_read_readvariableop2savev2_adam_conv2d_71_kernel_m_read_readvariableop0savev2_adam_conv2d_71_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop2savev2_adam_conv2d_72_kernel_m_read_readvariableop0savev2_adam_conv2d_72_bias_m_read_readvariableop2savev2_adam_conv2d_73_kernel_m_read_readvariableop0savev2_adam_conv2d_73_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_12_bias_m_read_readvariableop2savev2_adam_conv2d_74_kernel_m_read_readvariableop0savev2_adam_conv2d_74_bias_m_read_readvariableop2savev2_adam_conv2d_75_kernel_m_read_readvariableop0savev2_adam_conv2d_75_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_13_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_13_bias_m_read_readvariableop2savev2_adam_conv2d_76_kernel_m_read_readvariableop0savev2_adam_conv2d_76_bias_m_read_readvariableop2savev2_adam_conv2d_77_kernel_m_read_readvariableop0savev2_adam_conv2d_77_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_14_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_14_bias_m_read_readvariableop2savev2_adam_conv2d_78_kernel_m_read_readvariableop0savev2_adam_conv2d_78_bias_m_read_readvariableop2savev2_adam_conv2d_79_kernel_m_read_readvariableop0savev2_adam_conv2d_79_bias_m_read_readvariableop2savev2_adam_conv2d_80_kernel_m_read_readvariableop0savev2_adam_conv2d_80_bias_m_read_readvariableop2savev2_adam_conv2d_81_kernel_m_read_readvariableop0savev2_adam_conv2d_81_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop2savev2_adam_conv2d_63_kernel_v_read_readvariableop0savev2_adam_conv2d_63_bias_v_read_readvariableop2savev2_adam_conv2d_64_kernel_v_read_readvariableop0savev2_adam_conv2d_64_bias_v_read_readvariableop2savev2_adam_conv2d_65_kernel_v_read_readvariableop0savev2_adam_conv2d_65_bias_v_read_readvariableop2savev2_adam_conv2d_66_kernel_v_read_readvariableop0savev2_adam_conv2d_66_bias_v_read_readvariableop2savev2_adam_conv2d_67_kernel_v_read_readvariableop0savev2_adam_conv2d_67_bias_v_read_readvariableop2savev2_adam_conv2d_68_kernel_v_read_readvariableop0savev2_adam_conv2d_68_bias_v_read_readvariableop2savev2_adam_conv2d_69_kernel_v_read_readvariableop0savev2_adam_conv2d_69_bias_v_read_readvariableop2savev2_adam_conv2d_70_kernel_v_read_readvariableop0savev2_adam_conv2d_70_bias_v_read_readvariableop2savev2_adam_conv2d_71_kernel_v_read_readvariableop0savev2_adam_conv2d_71_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop2savev2_adam_conv2d_72_kernel_v_read_readvariableop0savev2_adam_conv2d_72_bias_v_read_readvariableop2savev2_adam_conv2d_73_kernel_v_read_readvariableop0savev2_adam_conv2d_73_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_12_bias_v_read_readvariableop2savev2_adam_conv2d_74_kernel_v_read_readvariableop0savev2_adam_conv2d_74_bias_v_read_readvariableop2savev2_adam_conv2d_75_kernel_v_read_readvariableop0savev2_adam_conv2d_75_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_13_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_13_bias_v_read_readvariableop2savev2_adam_conv2d_76_kernel_v_read_readvariableop0savev2_adam_conv2d_76_bias_v_read_readvariableop2savev2_adam_conv2d_77_kernel_v_read_readvariableop0savev2_adam_conv2d_77_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_14_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_14_bias_v_read_readvariableop2savev2_adam_conv2d_78_kernel_v_read_readvariableop0savev2_adam_conv2d_78_bias_v_read_readvariableop2savev2_adam_conv2d_79_kernel_v_read_readvariableop0savev2_adam_conv2d_79_bias_v_read_readvariableop2savev2_adam_conv2d_80_kernel_v_read_readvariableop0savev2_adam_conv2d_80_bias_v_read_readvariableop2savev2_adam_conv2d_81_kernel_v_read_readvariableop0savev2_adam_conv2d_81_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : : @:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:@?:@:?@:@:@@:@: @: :@ : :  : :  : : :: : : : : : : : : : : :  : : @:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:@?:@:?@:@:@@:@: @: :@ : :  : :  : : :: : :  : : @:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:@?:@:?@:@:@@:@: @: :@ : :  : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-	)
'
_output_shapes
:@?:!


_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:! 

_output_shapes	
:?:-!)
'
_output_shapes
:@?: "

_output_shapes
:@:-#)
'
_output_shapes
:?@: $

_output_shapes
:@:,%(
&
_output_shapes
:@@: &

_output_shapes
:@:,'(
&
_output_shapes
: @: (

_output_shapes
: :,)(
&
_output_shapes
:@ : *

_output_shapes
: :,+(
&
_output_shapes
:  : ,

_output_shapes
: :,-(
&
_output_shapes
:  : .

_output_shapes
: :,/(
&
_output_shapes
: : 0

_output_shapes
::1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: :,:(
&
_output_shapes
: : ;

_output_shapes
: :,<(
&
_output_shapes
:  : =

_output_shapes
: :,>(
&
_output_shapes
: @: ?

_output_shapes
:@:,@(
&
_output_shapes
:@@: A

_output_shapes
:@:-B)
'
_output_shapes
:@?:!C

_output_shapes	
:?:.D*
(
_output_shapes
:??:!E

_output_shapes	
:?:.F*
(
_output_shapes
:??:!G

_output_shapes	
:?:.H*
(
_output_shapes
:??:!I

_output_shapes	
:?:.J*
(
_output_shapes
:??:!K

_output_shapes	
:?:.L*
(
_output_shapes
:??:!M

_output_shapes	
:?:.N*
(
_output_shapes
:??:!O

_output_shapes	
:?:.P*
(
_output_shapes
:??:!Q

_output_shapes	
:?:.R*
(
_output_shapes
:??:!S

_output_shapes	
:?:.T*
(
_output_shapes
:??:!U

_output_shapes	
:?:.V*
(
_output_shapes
:??:!W

_output_shapes	
:?:.X*
(
_output_shapes
:??:!Y

_output_shapes	
:?:-Z)
'
_output_shapes
:@?: [

_output_shapes
:@:-\)
'
_output_shapes
:?@: ]

_output_shapes
:@:,^(
&
_output_shapes
:@@: _

_output_shapes
:@:,`(
&
_output_shapes
: @: a

_output_shapes
: :,b(
&
_output_shapes
:@ : c

_output_shapes
: :,d(
&
_output_shapes
:  : e

_output_shapes
: :,f(
&
_output_shapes
:  : g

_output_shapes
: :,h(
&
_output_shapes
: : i

_output_shapes
::,j(
&
_output_shapes
: : k

_output_shapes
: :,l(
&
_output_shapes
:  : m

_output_shapes
: :,n(
&
_output_shapes
: @: o

_output_shapes
:@:,p(
&
_output_shapes
:@@: q

_output_shapes
:@:-r)
'
_output_shapes
:@?:!s

_output_shapes	
:?:.t*
(
_output_shapes
:??:!u

_output_shapes	
:?:.v*
(
_output_shapes
:??:!w

_output_shapes	
:?:.x*
(
_output_shapes
:??:!y

_output_shapes	
:?:.z*
(
_output_shapes
:??:!{

_output_shapes	
:?:.|*
(
_output_shapes
:??:!}

_output_shapes	
:?:.~*
(
_output_shapes
:??:!

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:.?)
'
_output_shapes
:@?:!?

_output_shapes
:@:.?)
'
_output_shapes
:?@:!?

_output_shapes
:@:-?(
&
_output_shapes
:@@:!?

_output_shapes
:@:-?(
&
_output_shapes
: @:!?

_output_shapes
: :-?(
&
_output_shapes
:@ :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :-?(
&
_output_shapes
: :!?

_output_shapes
::?

_output_shapes
: 
?
?
'__inference_model_8_layer_call_fn_11816

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?%

unknown_31:@?

unknown_32:@%

unknown_33:?@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37: @

unknown_38: $

unknown_39:@ 

unknown_40: $

unknown_41:  

unknown_42: $

unknown_43:  

unknown_44: $

unknown_45: 

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_105282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
'__inference_model_8_layer_call_fn_10627
input_12!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?%

unknown_31:@?

unknown_32:@%

unknown_33:?@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37: @

unknown_38: $

unknown_39:@ 

unknown_40: $

unknown_41:  

unknown_42: $

unknown_43:  

unknown_44: $

unknown_45: 

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_105282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????`?
"
_user_specified_name
input_12
?
?
D__inference_conv2d_73_layer_call_and_return_conditional_losses_12704

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_73_layer_call_fn_12693

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_73_layer_call_and_return_conditional_losses_103442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_72_layer_call_and_return_conditional_losses_10327

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_8_layer_call_fn_12567

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_108182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_77_layer_call_fn_12799

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_77_layer_call_and_return_conditional_losses_104402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?$
?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10009

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_12437

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_69_layer_call_fn_12546

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_102472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_8_layer_call_fn_11917

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?%

unknown_31:@?

unknown_32:@%

unknown_33:?@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37: @

unknown_38: $

unknown_39:@ 

unknown_40: $

unknown_41:  

unknown_42: $

unknown_43:  

unknown_44: $

unknown_45: 

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_111382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_10258

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_71_layer_call_and_return_conditional_losses_12624

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_76_layer_call_and_return_conditional_losses_12790

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????0@?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????0@?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_72_layer_call_fn_12673

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_72_layer_call_and_return_conditional_losses_103272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_67_layer_call_fn_12506

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_102122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_79_layer_call_and_return_conditional_losses_12863

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_77_layer_call_and_return_conditional_losses_12810

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_9925

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9901

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_73_layer_call_and_return_conditional_losses_10344

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_11_layer_call_fn_12657
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_103142
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
)__inference_conv2d_81_layer_call_fn_12892

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_81_layer_call_and_return_conditional_losses_105212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_11_layer_call_fn_9975

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_99652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?$
?
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10053

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_12457

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0@ 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_78_layer_call_and_return_conditional_losses_10471

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`?@
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_19_layer_call_fn_9931

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99252
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_18_layer_call_fn_9919

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99132
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_80_layer_call_and_return_conditional_losses_12883

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_12572

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_76_layer_call_and_return_conditional_losses_10423

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????0@?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????0@?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_12417

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
'__inference_model_8_layer_call_fn_11338
input_12!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?%

unknown_31:@?

unknown_32:@%

unknown_33:?@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37: @

unknown_38: $

unknown_39:@ 

unknown_40: $

unknown_41:  

unknown_42: $

unknown_43:  

unknown_44: $

unknown_45: 

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_111382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????`?
"
_user_specified_name
input_12
?
?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_10142

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_12477

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0@@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_12517

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9889

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_9_layer_call_fn_12629

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_103002
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?f
!__inference__traced_restore_13853
file_prefix;
!assignvariableop_conv2d_62_kernel: /
!assignvariableop_1_conv2d_62_bias: =
#assignvariableop_2_conv2d_63_kernel:  /
!assignvariableop_3_conv2d_63_bias: =
#assignvariableop_4_conv2d_64_kernel: @/
!assignvariableop_5_conv2d_64_bias:@=
#assignvariableop_6_conv2d_65_kernel:@@/
!assignvariableop_7_conv2d_65_bias:@>
#assignvariableop_8_conv2d_66_kernel:@?0
!assignvariableop_9_conv2d_66_bias:	?@
$assignvariableop_10_conv2d_67_kernel:??1
"assignvariableop_11_conv2d_67_bias:	?@
$assignvariableop_12_conv2d_68_kernel:??1
"assignvariableop_13_conv2d_68_bias:	?@
$assignvariableop_14_conv2d_69_kernel:??1
"assignvariableop_15_conv2d_69_bias:	?@
$assignvariableop_16_conv2d_70_kernel:??1
"assignvariableop_17_conv2d_70_bias:	?@
$assignvariableop_18_conv2d_71_kernel:??1
"assignvariableop_19_conv2d_71_bias:	?J
.assignvariableop_20_conv2d_transpose_11_kernel:??;
,assignvariableop_21_conv2d_transpose_11_bias:	?@
$assignvariableop_22_conv2d_72_kernel:??1
"assignvariableop_23_conv2d_72_bias:	?@
$assignvariableop_24_conv2d_73_kernel:??1
"assignvariableop_25_conv2d_73_bias:	?J
.assignvariableop_26_conv2d_transpose_12_kernel:??;
,assignvariableop_27_conv2d_transpose_12_bias:	?@
$assignvariableop_28_conv2d_74_kernel:??1
"assignvariableop_29_conv2d_74_bias:	?@
$assignvariableop_30_conv2d_75_kernel:??1
"assignvariableop_31_conv2d_75_bias:	?I
.assignvariableop_32_conv2d_transpose_13_kernel:@?:
,assignvariableop_33_conv2d_transpose_13_bias:@?
$assignvariableop_34_conv2d_76_kernel:?@0
"assignvariableop_35_conv2d_76_bias:@>
$assignvariableop_36_conv2d_77_kernel:@@0
"assignvariableop_37_conv2d_77_bias:@H
.assignvariableop_38_conv2d_transpose_14_kernel: @:
,assignvariableop_39_conv2d_transpose_14_bias: >
$assignvariableop_40_conv2d_78_kernel:@ 0
"assignvariableop_41_conv2d_78_bias: >
$assignvariableop_42_conv2d_79_kernel:  0
"assignvariableop_43_conv2d_79_bias: >
$assignvariableop_44_conv2d_80_kernel:  0
"assignvariableop_45_conv2d_80_bias: >
$assignvariableop_46_conv2d_81_kernel: 0
"assignvariableop_47_conv2d_81_bias:'
assignvariableop_48_adam_iter:	 )
assignvariableop_49_adam_beta_1: )
assignvariableop_50_adam_beta_2: (
assignvariableop_51_adam_decay: 0
&assignvariableop_52_adam_learning_rate: #
assignvariableop_53_total: #
assignvariableop_54_count: %
assignvariableop_55_total_1: %
assignvariableop_56_count_1: E
+assignvariableop_57_adam_conv2d_62_kernel_m: 7
)assignvariableop_58_adam_conv2d_62_bias_m: E
+assignvariableop_59_adam_conv2d_63_kernel_m:  7
)assignvariableop_60_adam_conv2d_63_bias_m: E
+assignvariableop_61_adam_conv2d_64_kernel_m: @7
)assignvariableop_62_adam_conv2d_64_bias_m:@E
+assignvariableop_63_adam_conv2d_65_kernel_m:@@7
)assignvariableop_64_adam_conv2d_65_bias_m:@F
+assignvariableop_65_adam_conv2d_66_kernel_m:@?8
)assignvariableop_66_adam_conv2d_66_bias_m:	?G
+assignvariableop_67_adam_conv2d_67_kernel_m:??8
)assignvariableop_68_adam_conv2d_67_bias_m:	?G
+assignvariableop_69_adam_conv2d_68_kernel_m:??8
)assignvariableop_70_adam_conv2d_68_bias_m:	?G
+assignvariableop_71_adam_conv2d_69_kernel_m:??8
)assignvariableop_72_adam_conv2d_69_bias_m:	?G
+assignvariableop_73_adam_conv2d_70_kernel_m:??8
)assignvariableop_74_adam_conv2d_70_bias_m:	?G
+assignvariableop_75_adam_conv2d_71_kernel_m:??8
)assignvariableop_76_adam_conv2d_71_bias_m:	?Q
5assignvariableop_77_adam_conv2d_transpose_11_kernel_m:??B
3assignvariableop_78_adam_conv2d_transpose_11_bias_m:	?G
+assignvariableop_79_adam_conv2d_72_kernel_m:??8
)assignvariableop_80_adam_conv2d_72_bias_m:	?G
+assignvariableop_81_adam_conv2d_73_kernel_m:??8
)assignvariableop_82_adam_conv2d_73_bias_m:	?Q
5assignvariableop_83_adam_conv2d_transpose_12_kernel_m:??B
3assignvariableop_84_adam_conv2d_transpose_12_bias_m:	?G
+assignvariableop_85_adam_conv2d_74_kernel_m:??8
)assignvariableop_86_adam_conv2d_74_bias_m:	?G
+assignvariableop_87_adam_conv2d_75_kernel_m:??8
)assignvariableop_88_adam_conv2d_75_bias_m:	?P
5assignvariableop_89_adam_conv2d_transpose_13_kernel_m:@?A
3assignvariableop_90_adam_conv2d_transpose_13_bias_m:@F
+assignvariableop_91_adam_conv2d_76_kernel_m:?@7
)assignvariableop_92_adam_conv2d_76_bias_m:@E
+assignvariableop_93_adam_conv2d_77_kernel_m:@@7
)assignvariableop_94_adam_conv2d_77_bias_m:@O
5assignvariableop_95_adam_conv2d_transpose_14_kernel_m: @A
3assignvariableop_96_adam_conv2d_transpose_14_bias_m: E
+assignvariableop_97_adam_conv2d_78_kernel_m:@ 7
)assignvariableop_98_adam_conv2d_78_bias_m: E
+assignvariableop_99_adam_conv2d_79_kernel_m:  8
*assignvariableop_100_adam_conv2d_79_bias_m: F
,assignvariableop_101_adam_conv2d_80_kernel_m:  8
*assignvariableop_102_adam_conv2d_80_bias_m: F
,assignvariableop_103_adam_conv2d_81_kernel_m: 8
*assignvariableop_104_adam_conv2d_81_bias_m:F
,assignvariableop_105_adam_conv2d_62_kernel_v: 8
*assignvariableop_106_adam_conv2d_62_bias_v: F
,assignvariableop_107_adam_conv2d_63_kernel_v:  8
*assignvariableop_108_adam_conv2d_63_bias_v: F
,assignvariableop_109_adam_conv2d_64_kernel_v: @8
*assignvariableop_110_adam_conv2d_64_bias_v:@F
,assignvariableop_111_adam_conv2d_65_kernel_v:@@8
*assignvariableop_112_adam_conv2d_65_bias_v:@G
,assignvariableop_113_adam_conv2d_66_kernel_v:@?9
*assignvariableop_114_adam_conv2d_66_bias_v:	?H
,assignvariableop_115_adam_conv2d_67_kernel_v:??9
*assignvariableop_116_adam_conv2d_67_bias_v:	?H
,assignvariableop_117_adam_conv2d_68_kernel_v:??9
*assignvariableop_118_adam_conv2d_68_bias_v:	?H
,assignvariableop_119_adam_conv2d_69_kernel_v:??9
*assignvariableop_120_adam_conv2d_69_bias_v:	?H
,assignvariableop_121_adam_conv2d_70_kernel_v:??9
*assignvariableop_122_adam_conv2d_70_bias_v:	?H
,assignvariableop_123_adam_conv2d_71_kernel_v:??9
*assignvariableop_124_adam_conv2d_71_bias_v:	?R
6assignvariableop_125_adam_conv2d_transpose_11_kernel_v:??C
4assignvariableop_126_adam_conv2d_transpose_11_bias_v:	?H
,assignvariableop_127_adam_conv2d_72_kernel_v:??9
*assignvariableop_128_adam_conv2d_72_bias_v:	?H
,assignvariableop_129_adam_conv2d_73_kernel_v:??9
*assignvariableop_130_adam_conv2d_73_bias_v:	?R
6assignvariableop_131_adam_conv2d_transpose_12_kernel_v:??C
4assignvariableop_132_adam_conv2d_transpose_12_bias_v:	?H
,assignvariableop_133_adam_conv2d_74_kernel_v:??9
*assignvariableop_134_adam_conv2d_74_bias_v:	?H
,assignvariableop_135_adam_conv2d_75_kernel_v:??9
*assignvariableop_136_adam_conv2d_75_bias_v:	?Q
6assignvariableop_137_adam_conv2d_transpose_13_kernel_v:@?B
4assignvariableop_138_adam_conv2d_transpose_13_bias_v:@G
,assignvariableop_139_adam_conv2d_76_kernel_v:?@8
*assignvariableop_140_adam_conv2d_76_bias_v:@F
,assignvariableop_141_adam_conv2d_77_kernel_v:@@8
*assignvariableop_142_adam_conv2d_77_bias_v:@P
6assignvariableop_143_adam_conv2d_transpose_14_kernel_v: @B
4assignvariableop_144_adam_conv2d_transpose_14_bias_v: F
,assignvariableop_145_adam_conv2d_78_kernel_v:@ 8
*assignvariableop_146_adam_conv2d_78_bias_v: F
,assignvariableop_147_adam_conv2d_79_kernel_v:  8
*assignvariableop_148_adam_conv2d_79_bias_v: F
,assignvariableop_149_adam_conv2d_80_kernel_v:  8
*assignvariableop_150_adam_conv2d_80_bias_v: F
,assignvariableop_151_adam_conv2d_81_kernel_v: 8
*assignvariableop_152_adam_conv2d_81_bias_v:
identity_154??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_145?AssignVariableOp_146?AssignVariableOp_147?AssignVariableOp_148?AssignVariableOp_149?AssignVariableOp_15?AssignVariableOp_150?AssignVariableOp_151?AssignVariableOp_152?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?X
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?W
value?WB?W?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_62_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_62_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_63_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_63_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_64_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_64_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_65_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_65_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_66_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_66_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_67_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_67_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_68_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_68_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_69_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_69_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_70_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_70_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_71_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_71_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv2d_transpose_11_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv2d_transpose_11_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp$assignvariableop_22_conv2d_72_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp"assignvariableop_23_conv2d_72_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_73_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_73_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp.assignvariableop_26_conv2d_transpose_12_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_conv2d_transpose_12_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_74_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv2d_74_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_75_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_75_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp.assignvariableop_32_conv2d_transpose_13_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_conv2d_transpose_13_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv2d_76_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp"assignvariableop_35_conv2d_76_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp$assignvariableop_36_conv2d_77_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp"assignvariableop_37_conv2d_77_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp.assignvariableop_38_conv2d_transpose_14_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_conv2d_transpose_14_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp$assignvariableop_40_conv2d_78_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp"assignvariableop_41_conv2d_78_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp$assignvariableop_42_conv2d_79_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp"assignvariableop_43_conv2d_79_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_conv2d_80_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp"assignvariableop_45_conv2d_80_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp$assignvariableop_46_conv2d_81_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp"assignvariableop_47_conv2d_81_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_adam_iterIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpassignvariableop_49_adam_beta_1Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_adam_beta_2Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpassignvariableop_51_adam_decayIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_learning_rateIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOpassignvariableop_53_totalIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOpassignvariableop_54_countIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_1Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv2d_62_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv2d_62_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_63_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_63_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_64_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_64_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_65_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_65_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_66_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_66_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_67_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_67_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_68_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_68_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_69_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_69_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_70_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_70_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_71_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_71_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp5assignvariableop_77_adam_conv2d_transpose_11_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp3assignvariableop_78_adam_conv2d_transpose_11_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_72_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_72_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv2d_73_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_conv2d_73_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp5assignvariableop_83_adam_conv2d_transpose_12_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_conv2d_transpose_12_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_conv2d_74_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_conv2d_74_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_conv2d_75_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_conv2d_75_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp5assignvariableop_89_adam_conv2d_transpose_13_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp3assignvariableop_90_adam_conv2d_transpose_13_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_conv2d_76_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_conv2d_76_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv2d_77_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv2d_77_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp5assignvariableop_95_adam_conv2d_transpose_14_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp3assignvariableop_96_adam_conv2d_transpose_14_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_conv2d_78_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_conv2d_78_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_conv2d_79_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp*assignvariableop_100_adam_conv2d_79_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_conv2d_80_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_conv2d_80_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_conv2d_81_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_conv2d_81_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv2d_62_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_conv2d_62_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp,assignvariableop_107_adam_conv2d_63_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_conv2d_63_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv2d_64_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_conv2d_64_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_conv2d_65_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp*assignvariableop_112_adam_conv2d_65_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp,assignvariableop_113_adam_conv2d_66_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp*assignvariableop_114_adam_conv2d_66_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_conv2d_67_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_conv2d_67_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp,assignvariableop_117_adam_conv2d_68_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp*assignvariableop_118_adam_conv2d_68_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119?
AssignVariableOp_119AssignVariableOp,assignvariableop_119_adam_conv2d_69_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120?
AssignVariableOp_120AssignVariableOp*assignvariableop_120_adam_conv2d_69_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121?
AssignVariableOp_121AssignVariableOp,assignvariableop_121_adam_conv2d_70_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122?
AssignVariableOp_122AssignVariableOp*assignvariableop_122_adam_conv2d_70_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123?
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_conv2d_71_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124?
AssignVariableOp_124AssignVariableOp*assignvariableop_124_adam_conv2d_71_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125?
AssignVariableOp_125AssignVariableOp6assignvariableop_125_adam_conv2d_transpose_11_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126?
AssignVariableOp_126AssignVariableOp4assignvariableop_126_adam_conv2d_transpose_11_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127?
AssignVariableOp_127AssignVariableOp,assignvariableop_127_adam_conv2d_72_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128?
AssignVariableOp_128AssignVariableOp*assignvariableop_128_adam_conv2d_72_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129?
AssignVariableOp_129AssignVariableOp,assignvariableop_129_adam_conv2d_73_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130?
AssignVariableOp_130AssignVariableOp*assignvariableop_130_adam_conv2d_73_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131?
AssignVariableOp_131AssignVariableOp6assignvariableop_131_adam_conv2d_transpose_12_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_131q
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:2
Identity_132?
AssignVariableOp_132AssignVariableOp4assignvariableop_132_adam_conv2d_transpose_12_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_132q
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:2
Identity_133?
AssignVariableOp_133AssignVariableOp,assignvariableop_133_adam_conv2d_74_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_133q
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:2
Identity_134?
AssignVariableOp_134AssignVariableOp*assignvariableop_134_adam_conv2d_74_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_134q
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:2
Identity_135?
AssignVariableOp_135AssignVariableOp,assignvariableop_135_adam_conv2d_75_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_135q
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:2
Identity_136?
AssignVariableOp_136AssignVariableOp*assignvariableop_136_adam_conv2d_75_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_136q
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:2
Identity_137?
AssignVariableOp_137AssignVariableOp6assignvariableop_137_adam_conv2d_transpose_13_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_137q
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:2
Identity_138?
AssignVariableOp_138AssignVariableOp4assignvariableop_138_adam_conv2d_transpose_13_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_138q
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:2
Identity_139?
AssignVariableOp_139AssignVariableOp,assignvariableop_139_adam_conv2d_76_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139q
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:2
Identity_140?
AssignVariableOp_140AssignVariableOp*assignvariableop_140_adam_conv2d_76_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_140q
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:2
Identity_141?
AssignVariableOp_141AssignVariableOp,assignvariableop_141_adam_conv2d_77_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_141q
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:2
Identity_142?
AssignVariableOp_142AssignVariableOp*assignvariableop_142_adam_conv2d_77_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_142q
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:2
Identity_143?
AssignVariableOp_143AssignVariableOp6assignvariableop_143_adam_conv2d_transpose_14_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_143q
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:2
Identity_144?
AssignVariableOp_144AssignVariableOp4assignvariableop_144_adam_conv2d_transpose_14_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_144q
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:2
Identity_145?
AssignVariableOp_145AssignVariableOp,assignvariableop_145_adam_conv2d_78_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_145q
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:2
Identity_146?
AssignVariableOp_146AssignVariableOp*assignvariableop_146_adam_conv2d_78_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_146q
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:2
Identity_147?
AssignVariableOp_147AssignVariableOp,assignvariableop_147_adam_conv2d_79_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_147q
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:2
Identity_148?
AssignVariableOp_148AssignVariableOp*assignvariableop_148_adam_conv2d_79_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_148q
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:2
Identity_149?
AssignVariableOp_149AssignVariableOp,assignvariableop_149_adam_conv2d_80_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149q
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:2
Identity_150?
AssignVariableOp_150AssignVariableOp*assignvariableop_150_adam_conv2d_80_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_150q
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:2
Identity_151?
AssignVariableOp_151AssignVariableOp,assignvariableop_151_adam_conv2d_81_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_151q
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:2
Identity_152?
AssignVariableOp_152AssignVariableOp*assignvariableop_152_adam_conv2d_81_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1529
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_153Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_153?
Identity_154IdentityIdentity_153:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_154"%
identity_154Identity_154:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522*
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
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
#__inference_signature_wrapper_11715
input_12!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@$
	unknown_7:@?
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?%

unknown_31:@?

unknown_32:@%

unknown_33:?@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37: @

unknown_38: $

unknown_39:@ 

unknown_40: $

unknown_41:  

unknown_42: $

unknown_43:  

unknown_44: $

unknown_45: 

unknown_46:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_98832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:?????????`?
"
_user_specified_name
input_12
?
u
I__inference_concatenate_11_layer_call_and_return_conditional_losses_12664
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_12537

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_10272

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_11_layer_call_and_return_conditional_losses_10314

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_74_layer_call_fn_12726

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_74_layer_call_and_return_conditional_losses_103752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_74_layer_call_and_return_conditional_losses_10375

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?$
?
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10097

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_14_layer_call_fn_10107

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_100972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
B__inference_model_8_layer_call_and_return_conditional_losses_11472
input_12)
conv2d_62_11341: 
conv2d_62_11343: )
conv2d_63_11346:  
conv2d_63_11348: )
conv2d_64_11352: @
conv2d_64_11354:@)
conv2d_65_11357:@@
conv2d_65_11359:@*
conv2d_66_11363:@?
conv2d_66_11365:	?+
conv2d_67_11368:??
conv2d_67_11370:	?+
conv2d_68_11374:??
conv2d_68_11376:	?+
conv2d_69_11379:??
conv2d_69_11381:	?+
conv2d_70_11386:??
conv2d_70_11388:	?+
conv2d_71_11391:??
conv2d_71_11393:	?5
conv2d_transpose_11_11397:??(
conv2d_transpose_11_11399:	?+
conv2d_72_11403:??
conv2d_72_11405:	?+
conv2d_73_11408:??
conv2d_73_11410:	?5
conv2d_transpose_12_11413:??(
conv2d_transpose_12_11415:	?+
conv2d_74_11419:??
conv2d_74_11421:	?+
conv2d_75_11424:??
conv2d_75_11426:	?4
conv2d_transpose_13_11429:@?'
conv2d_transpose_13_11431:@*
conv2d_76_11435:?@
conv2d_76_11437:@)
conv2d_77_11440:@@
conv2d_77_11442:@3
conv2d_transpose_14_11445: @'
conv2d_transpose_14_11447: )
conv2d_78_11451:@ 
conv2d_78_11453: )
conv2d_79_11456:  
conv2d_79_11458: )
conv2d_80_11461:  
conv2d_80_11463: )
conv2d_81_11466: 
conv2d_81_11468:
identity??!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall?!conv2d_74/StatefulPartitionedCall?!conv2d_75/StatefulPartitionedCall?!conv2d_76/StatefulPartitionedCall?!conv2d_77/StatefulPartitionedCall?!conv2d_78/StatefulPartitionedCall?!conv2d_79/StatefulPartitionedCall?!conv2d_80/StatefulPartitionedCall?!conv2d_81/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_62_11341conv2d_62_11343*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_101252#
!conv2d_62/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_11346conv2d_63_11348*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_101422#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98892"
 max_pooling2d_16/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_64_11352conv2d_64_11354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_101602#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_11357conv2d_65_11359*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_101772#
!conv2d_65/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_99012"
 max_pooling2d_17/PartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_66_11363conv2d_66_11365*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_101952#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_11368conv2d_67_11370*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_102122#
!conv2d_67/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_99132"
 max_pooling2d_18/PartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_68_11374conv2d_68_11376*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_102302#
!conv2d_68/StatefulPartitionedCall?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_11379conv2d_69_11381*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_102472#
!conv2d_69/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_102582
dropout_8/PartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_99252"
 max_pooling2d_19/PartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_70_11386conv2d_70_11388*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_102722#
!conv2d_70/StatefulPartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0conv2d_71_11391conv2d_71_11393*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_71_layer_call_and_return_conditional_losses_102892#
!conv2d_71/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_103002
dropout_9/PartitionedCall?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_transpose_11_11397conv2d_transpose_11_11399*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_99652-
+conv2d_transpose_11/StatefulPartitionedCall?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_103142 
concatenate_11/PartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_72_11403conv2d_72_11405*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_72_layer_call_and_return_conditional_losses_103272#
!conv2d_72/StatefulPartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0conv2d_73_11408conv2d_73_11410*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_73_layer_call_and_return_conditional_losses_103442#
!conv2d_73/StatefulPartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0conv2d_transpose_12_11413conv2d_transpose_12_11415*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_100092-
+conv2d_transpose_12/StatefulPartitionedCall?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_67/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_103622 
concatenate_12/PartitionedCall?
!conv2d_74/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_74_11419conv2d_74_11421*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_74_layer_call_and_return_conditional_losses_103752#
!conv2d_74/StatefulPartitionedCall?
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCall*conv2d_74/StatefulPartitionedCall:output:0conv2d_75_11424conv2d_75_11426*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_75_layer_call_and_return_conditional_losses_103922#
!conv2d_75/StatefulPartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0conv2d_transpose_13_11429conv2d_transpose_13_11431*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_100532-
+conv2d_transpose_13/StatefulPartitionedCall?
concatenate_13/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*conv2d_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????0@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_13_layer_call_and_return_conditional_losses_104102 
concatenate_13/PartitionedCall?
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0conv2d_76_11435conv2d_76_11437*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_76_layer_call_and_return_conditional_losses_104232#
!conv2d_76/StatefulPartitionedCall?
!conv2d_77/StatefulPartitionedCallStatefulPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0conv2d_77_11440conv2d_77_11442*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_77_layer_call_and_return_conditional_losses_104402#
!conv2d_77/StatefulPartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_77/StatefulPartitionedCall:output:0conv2d_transpose_14_11445conv2d_transpose_14_11447*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_100972-
+conv2d_transpose_14/StatefulPartitionedCall?
concatenate_14/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_14_layer_call_and_return_conditional_losses_104582 
concatenate_14/PartitionedCall?
!conv2d_78/StatefulPartitionedCallStatefulPartitionedCall'concatenate_14/PartitionedCall:output:0conv2d_78_11451conv2d_78_11453*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_78_layer_call_and_return_conditional_losses_104712#
!conv2d_78/StatefulPartitionedCall?
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCall*conv2d_78/StatefulPartitionedCall:output:0conv2d_79_11456conv2d_79_11458*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_79_layer_call_and_return_conditional_losses_104882#
!conv2d_79/StatefulPartitionedCall?
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0conv2d_80_11461conv2d_80_11463*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_80_layer_call_and_return_conditional_losses_105052#
!conv2d_80/StatefulPartitionedCall?
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0conv2d_81_11466conv2d_81_11468*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_81_layer_call_and_return_conditional_losses_105212#
!conv2d_81/StatefulPartitionedCall?
IdentityIdentity*conv2d_81/StatefulPartitionedCall:output:0"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall"^conv2d_74/StatefulPartitionedCall"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^conv2d_77/StatefulPartitionedCall"^conv2d_78/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2F
!conv2d_74/StatefulPartitionedCall!conv2d_74/StatefulPartitionedCall2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!conv2d_77/StatefulPartitionedCall!conv2d_77/StatefulPartitionedCall2F
!conv2d_78/StatefulPartitionedCall!conv2d_78/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall:Z V
0
_output_shapes
:?????????`?
"
_user_specified_name
input_12
?$
?
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_9965

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_12639

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_78_layer_call_and_return_conditional_losses_12843

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????`?@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_75_layer_call_and_return_conditional_losses_12757

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_75_layer_call_fn_12746

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_75_layer_call_and_return_conditional_losses_103922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_10195

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
E
)__inference_dropout_8_layer_call_fn_12562

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_102582
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_13_layer_call_fn_12763
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????0@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_13_layer_call_and_return_conditional_losses_104102
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????0@?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????0@@:k g
A
_output_shapes/
-:+???????????????????????????@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????0@@
"
_user_specified_name
inputs/1
?
K
/__inference_max_pooling2d_17_layer_call_fn_9907

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_99012
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_70_layer_call_fn_12593

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_102722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_9_layer_call_fn_12634

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_107752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
u
I__inference_concatenate_13_layer_call_and_return_conditional_losses_12770
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????0@?2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????0@?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????0@@:k g
A
_output_shapes/
-:+???????????????????????????@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????0@@
"
_user_specified_name
inputs/1
?
Z
.__inference_concatenate_12_layer_call_fn_12710
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_103622
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:????????? ?:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:????????? ?
"
_user_specified_name
inputs/1
?
u
I__inference_concatenate_14_layer_call_and_return_conditional_losses_12823
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????`?@2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????`?@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+??????????????????????????? :?????????`? :k g
A
_output_shapes/
-:+??????????????????????????? 
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????`? 
"
_user_specified_name
inputs/1
??
?'
B__inference_model_8_layer_call_and_return_conditional_losses_12397

inputsB
(conv2d_62_conv2d_readvariableop_resource: 7
)conv2d_62_biasadd_readvariableop_resource: B
(conv2d_63_conv2d_readvariableop_resource:  7
)conv2d_63_biasadd_readvariableop_resource: B
(conv2d_64_conv2d_readvariableop_resource: @7
)conv2d_64_biasadd_readvariableop_resource:@B
(conv2d_65_conv2d_readvariableop_resource:@@7
)conv2d_65_biasadd_readvariableop_resource:@C
(conv2d_66_conv2d_readvariableop_resource:@?8
)conv2d_66_biasadd_readvariableop_resource:	?D
(conv2d_67_conv2d_readvariableop_resource:??8
)conv2d_67_biasadd_readvariableop_resource:	?D
(conv2d_68_conv2d_readvariableop_resource:??8
)conv2d_68_biasadd_readvariableop_resource:	?D
(conv2d_69_conv2d_readvariableop_resource:??8
)conv2d_69_biasadd_readvariableop_resource:	?D
(conv2d_70_conv2d_readvariableop_resource:??8
)conv2d_70_biasadd_readvariableop_resource:	?D
(conv2d_71_conv2d_readvariableop_resource:??8
)conv2d_71_biasadd_readvariableop_resource:	?X
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_11_biasadd_readvariableop_resource:	?D
(conv2d_72_conv2d_readvariableop_resource:??8
)conv2d_72_biasadd_readvariableop_resource:	?D
(conv2d_73_conv2d_readvariableop_resource:??8
)conv2d_73_biasadd_readvariableop_resource:	?X
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_12_biasadd_readvariableop_resource:	?D
(conv2d_74_conv2d_readvariableop_resource:??8
)conv2d_74_biasadd_readvariableop_resource:	?D
(conv2d_75_conv2d_readvariableop_resource:??8
)conv2d_75_biasadd_readvariableop_resource:	?W
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_13_biasadd_readvariableop_resource:@C
(conv2d_76_conv2d_readvariableop_resource:?@7
)conv2d_76_biasadd_readvariableop_resource:@B
(conv2d_77_conv2d_readvariableop_resource:@@7
)conv2d_77_biasadd_readvariableop_resource:@V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_14_biasadd_readvariableop_resource: B
(conv2d_78_conv2d_readvariableop_resource:@ 7
)conv2d_78_biasadd_readvariableop_resource: B
(conv2d_79_conv2d_readvariableop_resource:  7
)conv2d_79_biasadd_readvariableop_resource: B
(conv2d_80_conv2d_readvariableop_resource:  7
)conv2d_80_biasadd_readvariableop_resource: B
(conv2d_81_conv2d_readvariableop_resource: 7
)conv2d_81_biasadd_readvariableop_resource:
identity?? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp? conv2d_65/BiasAdd/ReadVariableOp?conv2d_65/Conv2D/ReadVariableOp? conv2d_66/BiasAdd/ReadVariableOp?conv2d_66/Conv2D/ReadVariableOp? conv2d_67/BiasAdd/ReadVariableOp?conv2d_67/Conv2D/ReadVariableOp? conv2d_68/BiasAdd/ReadVariableOp?conv2d_68/Conv2D/ReadVariableOp? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? conv2d_71/BiasAdd/ReadVariableOp?conv2d_71/Conv2D/ReadVariableOp? conv2d_72/BiasAdd/ReadVariableOp?conv2d_72/Conv2D/ReadVariableOp? conv2d_73/BiasAdd/ReadVariableOp?conv2d_73/Conv2D/ReadVariableOp? conv2d_74/BiasAdd/ReadVariableOp?conv2d_74/Conv2D/ReadVariableOp? conv2d_75/BiasAdd/ReadVariableOp?conv2d_75/Conv2D/ReadVariableOp? conv2d_76/BiasAdd/ReadVariableOp?conv2d_76/Conv2D/ReadVariableOp? conv2d_77/BiasAdd/ReadVariableOp?conv2d_77/Conv2D/ReadVariableOp? conv2d_78/BiasAdd/ReadVariableOp?conv2d_78/Conv2D/ReadVariableOp? conv2d_79/BiasAdd/ReadVariableOp?conv2d_79/Conv2D/ReadVariableOp? conv2d_80/BiasAdd/ReadVariableOp?conv2d_80/Conv2D/ReadVariableOp? conv2d_81/BiasAdd/ReadVariableOp?conv2d_81/Conv2D/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?*conv2d_transpose_12/BiasAdd/ReadVariableOp?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?*conv2d_transpose_13/BiasAdd/ReadVariableOp?3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?*conv2d_transpose_14/BiasAdd/ReadVariableOp?3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2Dinputs'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_62/BiasAdd
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_62/Relu?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_63/BiasAdd
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_63/Relu?
max_pooling2d_16/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:?????????0@ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_64/Conv2D/ReadVariableOp?
conv2d_64/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_64/Conv2D?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_64/Relu?
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_65/Conv2D/ReadVariableOp?
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_65/Conv2D?
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp?
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_65/BiasAdd~
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_65/Relu?
max_pooling2d_17/MaxPoolMaxPoolconv2d_65/Relu:activations:0*/
_output_shapes
:????????? @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool?
conv2d_66/Conv2D/ReadVariableOpReadVariableOp(conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_66/Conv2D/ReadVariableOp?
conv2d_66/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_66/Conv2D?
 conv2d_66/BiasAdd/ReadVariableOpReadVariableOp)conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_66/BiasAdd/ReadVariableOp?
conv2d_66/BiasAddBiasAddconv2d_66/Conv2D:output:0(conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_66/BiasAdd
conv2d_66/ReluReluconv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_66/Relu?
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_67/Conv2D/ReadVariableOp?
conv2d_67/Conv2DConv2Dconv2d_66/Relu:activations:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_67/Conv2D?
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_67/BiasAdd/ReadVariableOp?
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_67/BiasAdd
conv2d_67/ReluReluconv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_67/Relu?
max_pooling2d_18/MaxPoolMaxPoolconv2d_67/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_18/MaxPool?
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_68/Conv2D/ReadVariableOp?
conv2d_68/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_68/Conv2D?
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_68/BiasAdd/ReadVariableOp?
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_68/BiasAdd
conv2d_68/ReluReluconv2d_68/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_68/Relu?
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_69/Conv2D/ReadVariableOp?
conv2d_69/Conv2DConv2Dconv2d_68/Relu:activations:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_69/Conv2D?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_69/BiasAdd/ReadVariableOp?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_69/BiasAdd
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_69/Reluw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_8/dropout/Const?
dropout_8/dropout/MulMulconv2d_69/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_8/dropout/Mul~
dropout_8/dropout/ShapeShapeconv2d_69/Relu:activations:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_8/dropout/Mul_1?
max_pooling2d_19/MaxPoolMaxPooldropout_8/dropout/Mul_1:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_19/MaxPool?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_70/Conv2D/ReadVariableOp?
conv2d_70/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_70/Conv2D?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_70/BiasAdd/ReadVariableOp?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_70/BiasAdd
conv2d_70/ReluReluconv2d_70/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_70/Relu?
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_71/Conv2D/ReadVariableOp?
conv2d_71/Conv2DConv2Dconv2d_70/Relu:activations:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_71/Conv2D?
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_71/BiasAdd/ReadVariableOp?
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_71/BiasAdd
conv2d_71/ReluReluconv2d_71/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_71/Reluw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_9/dropout/Const?
dropout_9/dropout/MulMulconv2d_71/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_9/dropout/Mul~
dropout_9/dropout/ShapeShapeconv2d_71/Relu:activations:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_9/dropout/random_uniform/RandomUniform?
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_9/dropout/GreaterEqual/y?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_9/dropout/GreaterEqual?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_9/dropout/Cast?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_9/dropout/Mul_1?
conv2d_transpose_11/ShapeShapedropout_9/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
conv2d_transpose_11/Shape?
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stack?
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1?
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/2}
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_11/stack/3?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stack?
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stack?
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1?
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0dropout_9/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_11/BiasAdd/ReadVariableOp?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_transpose_11/BiasAddz
concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_11/concat/axis?
concatenate_11/concatConcatV2$conv2d_transpose_11/BiasAdd:output:0dropout_8/dropout/Mul_1:z:0#concatenate_11/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate_11/concat?
conv2d_72/Conv2D/ReadVariableOpReadVariableOp(conv2d_72_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_72/Conv2D/ReadVariableOp?
conv2d_72/Conv2DConv2Dconcatenate_11/concat:output:0'conv2d_72/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_72/Conv2D?
 conv2d_72/BiasAdd/ReadVariableOpReadVariableOp)conv2d_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_72/BiasAdd/ReadVariableOp?
conv2d_72/BiasAddBiasAddconv2d_72/Conv2D:output:0(conv2d_72/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_72/BiasAdd
conv2d_72/ReluReluconv2d_72/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_72/Relu?
conv2d_73/Conv2D/ReadVariableOpReadVariableOp(conv2d_73_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_73/Conv2D/ReadVariableOp?
conv2d_73/Conv2DConv2Dconv2d_72/Relu:activations:0'conv2d_73/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_73/Conv2D?
 conv2d_73/BiasAdd/ReadVariableOpReadVariableOp)conv2d_73_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_73/BiasAdd/ReadVariableOp?
conv2d_73/BiasAddBiasAddconv2d_73/Conv2D:output:0(conv2d_73/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_73/BiasAdd
conv2d_73/ReluReluconv2d_73/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_73/Relu?
conv2d_transpose_12/ShapeShapeconv2d_73/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape?
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack?
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1?
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_12/stack/2}
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_12/stack/3?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack?
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack?
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1?
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0conv2d_73/Relu:activations:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose?
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_12/BiasAdd/ReadVariableOp?
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_12/BiasAddz
concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_12/concat/axis?
concatenate_12/concatConcatV2$conv2d_transpose_12/BiasAdd:output:0conv2d_67/Relu:activations:0#concatenate_12/concat/axis:output:0*
N*
T0*0
_output_shapes
:????????? ?2
concatenate_12/concat?
conv2d_74/Conv2D/ReadVariableOpReadVariableOp(conv2d_74_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_74/Conv2D/ReadVariableOp?
conv2d_74/Conv2DConv2Dconcatenate_12/concat:output:0'conv2d_74/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_74/Conv2D?
 conv2d_74/BiasAdd/ReadVariableOpReadVariableOp)conv2d_74_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_74/BiasAdd/ReadVariableOp?
conv2d_74/BiasAddBiasAddconv2d_74/Conv2D:output:0(conv2d_74/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_74/BiasAdd
conv2d_74/ReluReluconv2d_74/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_74/Relu?
conv2d_75/Conv2D/ReadVariableOpReadVariableOp(conv2d_75_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_75/Conv2D/ReadVariableOp?
conv2d_75/Conv2DConv2Dconv2d_74/Relu:activations:0'conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_75/Conv2D?
 conv2d_75/BiasAdd/ReadVariableOpReadVariableOp)conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_75/BiasAdd/ReadVariableOp?
conv2d_75/BiasAddBiasAddconv2d_75/Conv2D:output:0(conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_75/BiasAdd
conv2d_75/ReluReluconv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_75/Relu?
conv2d_transpose_13/ShapeShapeconv2d_75/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape?
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack?
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1?
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2?
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/3?
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack?
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack?
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1?
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2?
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1?
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0conv2d_75/Relu:activations:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose?
*conv2d_transpose_13/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_13/BiasAdd/ReadVariableOp?
conv2d_transpose_13/BiasAddBiasAdd-conv2d_transpose_13/conv2d_transpose:output:02conv2d_transpose_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_transpose_13/BiasAddz
concatenate_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_13/concat/axis?
concatenate_13/concatConcatV2$conv2d_transpose_13/BiasAdd:output:0conv2d_65/Relu:activations:0#concatenate_13/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????0@?2
concatenate_13/concat?
conv2d_76/Conv2D/ReadVariableOpReadVariableOp(conv2d_76_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_76/Conv2D/ReadVariableOp?
conv2d_76/Conv2DConv2Dconcatenate_13/concat:output:0'conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_76/Conv2D?
 conv2d_76/BiasAdd/ReadVariableOpReadVariableOp)conv2d_76_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_76/BiasAdd/ReadVariableOp?
conv2d_76/BiasAddBiasAddconv2d_76/Conv2D:output:0(conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_76/BiasAdd~
conv2d_76/ReluReluconv2d_76/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_76/Relu?
conv2d_77/Conv2D/ReadVariableOpReadVariableOp(conv2d_77_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_77/Conv2D/ReadVariableOp?
conv2d_77/Conv2DConv2Dconv2d_76/Relu:activations:0'conv2d_77/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@*
paddingSAME*
strides
2
conv2d_77/Conv2D?
 conv2d_77/BiasAdd/ReadVariableOpReadVariableOp)conv2d_77_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_77/BiasAdd/ReadVariableOp?
conv2d_77/BiasAddBiasAddconv2d_77/Conv2D:output:0(conv2d_77/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_77/BiasAdd~
conv2d_77/ReluReluconv2d_77/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0@@2
conv2d_77/Relu?
conv2d_transpose_14/ShapeShapeconv2d_77/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape?
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack?
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1?
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2?
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_14/stack/1}
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_14/stack/3?
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack?
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack?
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1?
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2?
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1?
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0conv2d_77/Relu:activations:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose?
*conv2d_transpose_14/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_14/BiasAdd/ReadVariableOp?
conv2d_transpose_14/BiasAddBiasAdd-conv2d_transpose_14/conv2d_transpose:output:02conv2d_transpose_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_transpose_14/BiasAddz
concatenate_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_14/concat/axis?
concatenate_14/concatConcatV2$conv2d_transpose_14/BiasAdd:output:0conv2d_63/Relu:activations:0#concatenate_14/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????`?@2
concatenate_14/concat?
conv2d_78/Conv2D/ReadVariableOpReadVariableOp(conv2d_78_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_78/Conv2D/ReadVariableOp?
conv2d_78/Conv2DConv2Dconcatenate_14/concat:output:0'conv2d_78/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_78/Conv2D?
 conv2d_78/BiasAdd/ReadVariableOpReadVariableOp)conv2d_78_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_78/BiasAdd/ReadVariableOp?
conv2d_78/BiasAddBiasAddconv2d_78/Conv2D:output:0(conv2d_78/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_78/BiasAdd
conv2d_78/ReluReluconv2d_78/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_78/Relu?
conv2d_79/Conv2D/ReadVariableOpReadVariableOp(conv2d_79_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_79/Conv2D/ReadVariableOp?
conv2d_79/Conv2DConv2Dconv2d_78/Relu:activations:0'conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_79/Conv2D?
 conv2d_79/BiasAdd/ReadVariableOpReadVariableOp)conv2d_79_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_79/BiasAdd/ReadVariableOp?
conv2d_79/BiasAddBiasAddconv2d_79/Conv2D:output:0(conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_79/BiasAdd
conv2d_79/ReluReluconv2d_79/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_79/Relu?
conv2d_80/Conv2D/ReadVariableOpReadVariableOp(conv2d_80_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_80/Conv2D/ReadVariableOp?
conv2d_80/Conv2DConv2Dconv2d_79/Relu:activations:0'conv2d_80/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? *
paddingSAME*
strides
2
conv2d_80/Conv2D?
 conv2d_80/BiasAdd/ReadVariableOpReadVariableOp)conv2d_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_80/BiasAdd/ReadVariableOp?
conv2d_80/BiasAddBiasAddconv2d_80/Conv2D:output:0(conv2d_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_80/BiasAdd
conv2d_80/ReluReluconv2d_80/BiasAdd:output:0*
T0*0
_output_shapes
:?????????`? 2
conv2d_80/Relu?
conv2d_81/Conv2D/ReadVariableOpReadVariableOp(conv2d_81_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_81/Conv2D/ReadVariableOp?
conv2d_81/Conv2DConv2Dconv2d_80/Relu:activations:0'conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?*
paddingSAME*
strides
2
conv2d_81/Conv2D?
 conv2d_81/BiasAdd/ReadVariableOpReadVariableOp)conv2d_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_81/BiasAdd/ReadVariableOp?
conv2d_81/BiasAddBiasAddconv2d_81/Conv2D:output:0(conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????`?2
conv2d_81/BiasAdd?
IdentityIdentityconv2d_81/BiasAdd:output:0!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp!^conv2d_66/BiasAdd/ReadVariableOp ^conv2d_66/Conv2D/ReadVariableOp!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp!^conv2d_72/BiasAdd/ReadVariableOp ^conv2d_72/Conv2D/ReadVariableOp!^conv2d_73/BiasAdd/ReadVariableOp ^conv2d_73/Conv2D/ReadVariableOp!^conv2d_74/BiasAdd/ReadVariableOp ^conv2d_74/Conv2D/ReadVariableOp!^conv2d_75/BiasAdd/ReadVariableOp ^conv2d_75/Conv2D/ReadVariableOp!^conv2d_76/BiasAdd/ReadVariableOp ^conv2d_76/Conv2D/ReadVariableOp!^conv2d_77/BiasAdd/ReadVariableOp ^conv2d_77/Conv2D/ReadVariableOp!^conv2d_78/BiasAdd/ReadVariableOp ^conv2d_78/Conv2D/ReadVariableOp!^conv2d_79/BiasAdd/ReadVariableOp ^conv2d_79/Conv2D/ReadVariableOp!^conv2d_80/BiasAdd/ReadVariableOp ^conv2d_80/Conv2D/ReadVariableOp!^conv2d_81/BiasAdd/ReadVariableOp ^conv2d_81/Conv2D/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp+^conv2d_transpose_13/BiasAdd/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp+^conv2d_transpose_14/BiasAdd/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:?????????`?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes~
|:?????????`?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2D
 conv2d_66/BiasAdd/ReadVariableOp conv2d_66/BiasAdd/ReadVariableOp2B
conv2d_66/Conv2D/ReadVariableOpconv2d_66/Conv2D/ReadVariableOp2D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2D
 conv2d_72/BiasAdd/ReadVariableOp conv2d_72/BiasAdd/ReadVariableOp2B
conv2d_72/Conv2D/ReadVariableOpconv2d_72/Conv2D/ReadVariableOp2D
 conv2d_73/BiasAdd/ReadVariableOp conv2d_73/BiasAdd/ReadVariableOp2B
conv2d_73/Conv2D/ReadVariableOpconv2d_73/Conv2D/ReadVariableOp2D
 conv2d_74/BiasAdd/ReadVariableOp conv2d_74/BiasAdd/ReadVariableOp2B
conv2d_74/Conv2D/ReadVariableOpconv2d_74/Conv2D/ReadVariableOp2D
 conv2d_75/BiasAdd/ReadVariableOp conv2d_75/BiasAdd/ReadVariableOp2B
conv2d_75/Conv2D/ReadVariableOpconv2d_75/Conv2D/ReadVariableOp2D
 conv2d_76/BiasAdd/ReadVariableOp conv2d_76/BiasAdd/ReadVariableOp2B
conv2d_76/Conv2D/ReadVariableOpconv2d_76/Conv2D/ReadVariableOp2D
 conv2d_77/BiasAdd/ReadVariableOp conv2d_77/BiasAdd/ReadVariableOp2B
conv2d_77/Conv2D/ReadVariableOpconv2d_77/Conv2D/ReadVariableOp2D
 conv2d_78/BiasAdd/ReadVariableOp conv2d_78/BiasAdd/ReadVariableOp2B
conv2d_78/Conv2D/ReadVariableOpconv2d_78/Conv2D/ReadVariableOp2D
 conv2d_79/BiasAdd/ReadVariableOp conv2d_79/BiasAdd/ReadVariableOp2B
conv2d_79/Conv2D/ReadVariableOpconv2d_79/Conv2D/ReadVariableOp2D
 conv2d_80/BiasAdd/ReadVariableOp conv2d_80/BiasAdd/ReadVariableOp2B
conv2d_80/Conv2D/ReadVariableOpconv2d_80/Conv2D/ReadVariableOp2D
 conv2d_81/BiasAdd/ReadVariableOp conv2d_81/BiasAdd/ReadVariableOp2B
conv2d_81/Conv2D/ReadVariableOpconv2d_81/Conv2D/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_13/BiasAdd/ReadVariableOp*conv2d_transpose_13/BiasAdd/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_14/BiasAdd/ReadVariableOp*conv2d_transpose_14/BiasAdd/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????`?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_12557

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_66_layer_call_fn_12486

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_101952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
?
)__inference_conv2d_63_layer_call_fn_12426

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????`? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_101422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????`? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????`? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????`? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_12497

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:????????? ?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
?
)__inference_conv2d_76_layer_call_fn_12779

inputs"
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_76_layer_call_and_return_conditional_losses_104232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????0@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????0@?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????0@?
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
F
input_12:
serving_default_input_12:0?????????`?F
	conv2d_819
StatefulPartitionedCall:0?????????`?tensorflow/serving/predict:??	
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer-18
layer_with_weights-11
layer-19
layer_with_weights-12
layer-20
layer_with_weights-13
layer-21
layer-22
layer_with_weights-14
layer-23
layer_with_weights-15
layer-24
layer_with_weights-16
layer-25
layer-26
layer_with_weights-17
layer-27
layer_with_weights-18
layer-28
layer_with_weights-19
layer-29
layer-30
 layer_with_weights-20
 layer-31
!layer_with_weights-21
!layer-32
"layer_with_weights-22
"layer-33
#layer_with_weights-23
#layer-34
$	optimizer
%
signatures
#&_self_saveable_object_factories
'	variables
(regularization_losses
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"??
_tf_keras_network??{"name": "model_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_62", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_63", "inbound_nodes": [[["conv2d_62", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_16", "inbound_nodes": [[["conv2d_63", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_64", "inbound_nodes": [[["max_pooling2d_16", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_65", "inbound_nodes": [[["conv2d_64", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_17", "inbound_nodes": [[["conv2d_65", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_66", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_66", "inbound_nodes": [[["max_pooling2d_17", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_67", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_67", "inbound_nodes": [[["conv2d_66", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_18", "inbound_nodes": [[["conv2d_67", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_68", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_68", "inbound_nodes": [[["max_pooling2d_18", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_69", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_69", "inbound_nodes": [[["conv2d_68", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_8", "inbound_nodes": [[["conv2d_69", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_19", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_19", "inbound_nodes": [[["dropout_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_70", "inbound_nodes": [[["max_pooling2d_19", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_71", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_71", "inbound_nodes": [[["conv2d_70", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_9", "inbound_nodes": [[["conv2d_71", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_11", "inbound_nodes": [[["dropout_9", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_11", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_11", "inbound_nodes": [[["conv2d_transpose_11", 0, 0, {}], ["dropout_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_72", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_72", "inbound_nodes": [[["concatenate_11", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_73", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_73", "inbound_nodes": [[["conv2d_72", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_12", "inbound_nodes": [[["conv2d_73", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_12", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_12", "inbound_nodes": [[["conv2d_transpose_12", 0, 0, {}], ["conv2d_67", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_74", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_74", "inbound_nodes": [[["concatenate_12", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_75", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_75", "inbound_nodes": [[["conv2d_74", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_13", "inbound_nodes": [[["conv2d_75", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_13", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_13", "inbound_nodes": [[["conv2d_transpose_13", 0, 0, {}], ["conv2d_65", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_76", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_76", "inbound_nodes": [[["concatenate_13", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_77", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_77", "inbound_nodes": [[["conv2d_76", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_14", "inbound_nodes": [[["conv2d_77", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_14", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_14", "inbound_nodes": [[["conv2d_transpose_14", 0, 0, {}], ["conv2d_63", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_78", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_78", "inbound_nodes": [[["concatenate_14", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_79", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_79", "inbound_nodes": [[["conv2d_78", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_80", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_80", "inbound_nodes": [[["conv2d_79", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_81", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_81", "inbound_nodes": [[["conv2d_80", 0, 0, {}]]]}], "input_layers": [["input_12", 0, 0]], "output_layers": [["conv2d_81", 0, 0]]}, "shared_object_id": 83, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 96, 128, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 96, 128, 3]}, "float32", "input_12"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_62", "inbound_nodes": [[["input_12", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_63", "inbound_nodes": [[["conv2d_62", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_16", "inbound_nodes": [[["conv2d_63", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_64", "inbound_nodes": [[["max_pooling2d_16", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_65", "inbound_nodes": [[["conv2d_64", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_17", "inbound_nodes": [[["conv2d_65", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Conv2D", "config": {"name": "conv2d_66", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_66", "inbound_nodes": [[["max_pooling2d_17", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "conv2d_67", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_67", "inbound_nodes": [[["conv2d_66", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_18", "inbound_nodes": [[["conv2d_67", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Conv2D", "config": {"name": "conv2d_68", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_68", "inbound_nodes": [[["max_pooling2d_18", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "conv2d_69", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_69", "inbound_nodes": [[["conv2d_68", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_8", "inbound_nodes": [[["conv2d_69", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_19", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_19", "inbound_nodes": [[["dropout_8", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_70", "inbound_nodes": [[["max_pooling2d_19", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "Conv2D", "config": {"name": "conv2d_71", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_71", "inbound_nodes": [[["conv2d_70", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_9", "inbound_nodes": [[["conv2d_71", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_11", "inbound_nodes": [[["dropout_9", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Concatenate", "config": {"name": "concatenate_11", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_11", "inbound_nodes": [[["conv2d_transpose_11", 0, 0, {}], ["dropout_8", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "Conv2D", "config": {"name": "conv2d_72", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_72", "inbound_nodes": [[["concatenate_11", 0, 0, {}]]], "shared_object_id": 43}, {"class_name": "Conv2D", "config": {"name": "conv2d_73", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 44}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_73", "inbound_nodes": [[["conv2d_72", 0, 0, {}]]], "shared_object_id": 46}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_12", "inbound_nodes": [[["conv2d_73", 0, 0, {}]]], "shared_object_id": 49}, {"class_name": "Concatenate", "config": {"name": "concatenate_12", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_12", "inbound_nodes": [[["conv2d_transpose_12", 0, 0, {}], ["conv2d_67", 0, 0, {}]]], "shared_object_id": 50}, {"class_name": "Conv2D", "config": {"name": "conv2d_74", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_74", "inbound_nodes": [[["concatenate_12", 0, 0, {}]]], "shared_object_id": 53}, {"class_name": "Conv2D", "config": {"name": "conv2d_75", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 54}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_75", "inbound_nodes": [[["conv2d_74", 0, 0, {}]]], "shared_object_id": 56}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_13", "inbound_nodes": [[["conv2d_75", 0, 0, {}]]], "shared_object_id": 59}, {"class_name": "Concatenate", "config": {"name": "concatenate_13", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_13", "inbound_nodes": [[["conv2d_transpose_13", 0, 0, {}], ["conv2d_65", 0, 0, {}]]], "shared_object_id": 60}, {"class_name": "Conv2D", "config": {"name": "conv2d_76", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 61}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_76", "inbound_nodes": [[["concatenate_13", 0, 0, {}]]], "shared_object_id": 63}, {"class_name": "Conv2D", "config": {"name": "conv2d_77", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_77", "inbound_nodes": [[["conv2d_76", 0, 0, {}]]], "shared_object_id": 66}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 67}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 68}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_14", "inbound_nodes": [[["conv2d_77", 0, 0, {}]]], "shared_object_id": 69}, {"class_name": "Concatenate", "config": {"name": "concatenate_14", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_14", "inbound_nodes": [[["conv2d_transpose_14", 0, 0, {}], ["conv2d_63", 0, 0, {}]]], "shared_object_id": 70}, {"class_name": "Conv2D", "config": {"name": "conv2d_78", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 71}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_78", "inbound_nodes": [[["concatenate_14", 0, 0, {}]]], "shared_object_id": 73}, {"class_name": "Conv2D", "config": {"name": "conv2d_79", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 74}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 75}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_79", "inbound_nodes": [[["conv2d_78", 0, 0, {}]]], "shared_object_id": 76}, {"class_name": "Conv2D", "config": {"name": "conv2d_80", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 77}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 78}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_80", "inbound_nodes": [[["conv2d_79", 0, 0, {}]]], "shared_object_id": 79}, {"class_name": "Conv2D", "config": {"name": "conv2d_81", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 80}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 81}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_81", "inbound_nodes": [[["conv2d_80", 0, 0, {}]]], "shared_object_id": 82}], "input_layers": [["input_12", 0, 0]], "output_layers": [["conv2d_81", 0, 0]]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 85}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 86}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
#+_self_saveable_object_factories"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_12", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 128, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}}
?

,kernel
-bias
#._self_saveable_object_factories
/regularization_losses
0	variables
1trainable_variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_12", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 87}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 3]}}
?

3kernel
4bias
#5_self_saveable_object_factories
6regularization_losses
7	variables
8trainable_variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_62", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 88}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 32]}}
?
#:_self_saveable_object_factories
;regularization_losses
<	variables
=trainable_variables
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_63", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 89}}
?

?kernel
@bias
#A_self_saveable_object_factories
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_16", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 90}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 64, 32]}}
?

Fkernel
Gbias
#H_self_saveable_object_factories
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_64", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 91}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 64, 64]}}
?
#M_self_saveable_object_factories
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_65", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 92}}
?

Rkernel
Sbias
#T_self_saveable_object_factories
Uregularization_losses
V	variables
Wtrainable_variables
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_66", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_66", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_17", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 93}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 32, 64]}}
?

Ykernel
Zbias
#[_self_saveable_object_factories
\regularization_losses
]	variables
^trainable_variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_67", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_67", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_66", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 94}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 32, 128]}}
?
#`_self_saveable_object_factories
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_67", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 95}}
?

ekernel
fbias
#g_self_saveable_object_factories
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_68", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_68", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_18", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 96}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 16, 128]}}
?

lkernel
mbias
#n_self_saveable_object_factories
oregularization_losses
p	variables
qtrainable_variables
r	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_69", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_69", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_68", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 97}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 16, 256]}}
?
#s_self_saveable_object_factories
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_69", 0, 0, {}]]], "shared_object_id": 28}
?
#x_self_saveable_object_factories
yregularization_losses
z	variables
{trainable_variables
|	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_19", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["dropout_8", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 98}}
?

}kernel
~bias
#_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_70", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_19", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 99}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 8, 256]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_71", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_71", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_70", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 100}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 8, 512]}}
?
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv2d_71", 0, 0, {}]]], "shared_object_id": 36}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["dropout_9", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}, "shared_object_id": 101}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 8, 512]}}
?
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_11", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_transpose_11", 0, 0, {}], ["dropout_8", 0, 0, {}]]], "shared_object_id": 40, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 12, 16, 256]}, {"class_name": "TensorShape", "items": [null, 12, 16, 256]}]}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_72", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_72", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_11", 0, 0, {}]]], "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 102}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 16, 512]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_73", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_73", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 44}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_72", 0, 0, {}]]], "shared_object_id": 46, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 103}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 16, 256]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["conv2d_73", 0, 0, {}]]], "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 104}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 16, 256]}}
?
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_12", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_transpose_12", 0, 0, {}], ["conv2d_67", 0, 0, {}]]], "shared_object_id": 50, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 24, 32, 128]}, {"class_name": "TensorShape", "items": [null, 24, 32, 128]}]}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_74", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_74", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_12", 0, 0, {}]]], "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 105}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 32, 256]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_75", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_75", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 54}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_74", 0, 0, {}]]], "shared_object_id": 56, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 106}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 32, 128]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["conv2d_75", 0, 0, {}]]], "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 107}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 32, 128]}}
?
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_13", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_transpose_13", 0, 0, {}], ["conv2d_65", 0, 0, {}]]], "shared_object_id": 60, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 48, 64, 64]}, {"class_name": "TensorShape", "items": [null, 48, 64, 64]}]}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_76", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 61}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_13", 0, 0, {}]]], "shared_object_id": 63, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 108}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 64, 128]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_77", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_77", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_76", 0, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 109}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 64, 64]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 67}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 68}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["conv2d_77", 0, 0, {}]]], "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 110}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 64, 64]}}
?
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_14", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_transpose_14", 0, 0, {}], ["conv2d_63", 0, 0, {}]]], "shared_object_id": 70, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 96, 128, 32]}, {"class_name": "TensorShape", "items": [null, 96, 128, 32]}]}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_78", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_78", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 71}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_14", 0, 0, {}]]], "shared_object_id": 73, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 111}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 64]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_79", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_79", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 74}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 75}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_78", 0, 0, {}]]], "shared_object_id": 76, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 32]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_80", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_80", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 77}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 78}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_79", 0, 0, {}]]], "shared_object_id": 79, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 32]}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_81", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_81", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 80}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 81}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_80", 0, 0, {}]]], "shared_object_id": 82, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 128, 32]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate,m?-m?3m?4m??m?@m?Fm?Gm?Rm?Sm?Ym?Zm?em?fm?lm?mm?}m?~m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?,v?-v?3v?4v??v?@v?Fv?Gv?Rv?Sv?Yv?Zv?ev?fv?lv?mv?}v?~v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
,0
-1
32
43
?4
@5
F6
G7
R8
S9
Y10
Z11
e12
f13
l14
m15
}16
~17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47"
trackable_list_wrapper
 "
trackable_list_wrapper
?
,0
-1
32
43
?4
@5
F6
G7
R8
S9
Y10
Z11
e12
f13
l14
m15
}16
~17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47"
trackable_list_wrapper
?
?metrics
?layers
?layer_metrics
'	variables
?non_trainable_variables
(regularization_losses
 ?layer_regularization_losses
)trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
*:( 2conv2d_62/kernel
: 2conv2d_62/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
/regularization_losses
?metrics
?layers
?layer_metrics
0	variables
?non_trainable_variables
 ?layer_regularization_losses
1trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_63/kernel
: 2conv2d_63/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
6regularization_losses
?metrics
?layers
?layer_metrics
7	variables
?non_trainable_variables
 ?layer_regularization_losses
8trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
;regularization_losses
?metrics
?layers
?layer_metrics
<	variables
?non_trainable_variables
 ?layer_regularization_losses
=trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_64/kernel
:@2conv2d_64/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
?
Bregularization_losses
?metrics
?layers
?layer_metrics
C	variables
?non_trainable_variables
 ?layer_regularization_losses
Dtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_65/kernel
:@2conv2d_65/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
Iregularization_losses
?metrics
?layers
?layer_metrics
J	variables
?non_trainable_variables
 ?layer_regularization_losses
Ktrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nregularization_losses
?metrics
?layers
?layer_metrics
O	variables
?non_trainable_variables
 ?layer_regularization_losses
Ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_66/kernel
:?2conv2d_66/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
?
Uregularization_losses
?metrics
?layers
?layer_metrics
V	variables
?non_trainable_variables
 ?layer_regularization_losses
Wtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_67/kernel
:?2conv2d_67/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
?
\regularization_losses
?metrics
?layers
?layer_metrics
]	variables
?non_trainable_variables
 ?layer_regularization_losses
^trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
aregularization_losses
?metrics
?layers
?layer_metrics
b	variables
?non_trainable_variables
 ?layer_regularization_losses
ctrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_68/kernel
:?2conv2d_68/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
?
hregularization_losses
?metrics
?layers
?layer_metrics
i	variables
?non_trainable_variables
 ?layer_regularization_losses
jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_69/kernel
:?2conv2d_69/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
?
oregularization_losses
?metrics
?layers
?layer_metrics
p	variables
?non_trainable_variables
 ?layer_regularization_losses
qtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
tregularization_losses
?metrics
?layers
?layer_metrics
u	variables
?non_trainable_variables
 ?layer_regularization_losses
vtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
yregularization_losses
?metrics
?layers
?layer_metrics
z	variables
?non_trainable_variables
 ?layer_regularization_losses
{trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_70/kernel
:?2conv2d_70/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_71/kernel
:?2conv2d_71/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_11/kernel
':%?2conv2d_transpose_11/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_72/kernel
:?2conv2d_72/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_73/kernel
:?2conv2d_73/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_12/kernel
':%?2conv2d_transpose_12/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_74/kernel
:?2conv2d_74/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_75/kernel
:?2conv2d_75/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5:3@?2conv2d_transpose_13/kernel
&:$@2conv2d_transpose_13/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)?@2conv2d_76/kernel
:@2conv2d_76/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_77/kernel
:@2conv2d_77/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2 @2conv2d_transpose_14/kernel
&:$ 2conv2d_transpose_14/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@ 2conv2d_78/kernel
: 2conv2d_78/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_79/kernel
: 2conv2d_79/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_80/kernel
: 2conv2d_80/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_81/kernel
:2conv2d_81/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?layers
?layer_metrics
?	variables
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 115}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 86}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_62/kernel/m
!: 2Adam/conv2d_62/bias/m
/:-  2Adam/conv2d_63/kernel/m
!: 2Adam/conv2d_63/bias/m
/:- @2Adam/conv2d_64/kernel/m
!:@2Adam/conv2d_64/bias/m
/:-@@2Adam/conv2d_65/kernel/m
!:@2Adam/conv2d_65/bias/m
0:.@?2Adam/conv2d_66/kernel/m
": ?2Adam/conv2d_66/bias/m
1:/??2Adam/conv2d_67/kernel/m
": ?2Adam/conv2d_67/bias/m
1:/??2Adam/conv2d_68/kernel/m
": ?2Adam/conv2d_68/bias/m
1:/??2Adam/conv2d_69/kernel/m
": ?2Adam/conv2d_69/bias/m
1:/??2Adam/conv2d_70/kernel/m
": ?2Adam/conv2d_70/bias/m
1:/??2Adam/conv2d_71/kernel/m
": ?2Adam/conv2d_71/bias/m
;:9??2!Adam/conv2d_transpose_11/kernel/m
,:*?2Adam/conv2d_transpose_11/bias/m
1:/??2Adam/conv2d_72/kernel/m
": ?2Adam/conv2d_72/bias/m
1:/??2Adam/conv2d_73/kernel/m
": ?2Adam/conv2d_73/bias/m
;:9??2!Adam/conv2d_transpose_12/kernel/m
,:*?2Adam/conv2d_transpose_12/bias/m
1:/??2Adam/conv2d_74/kernel/m
": ?2Adam/conv2d_74/bias/m
1:/??2Adam/conv2d_75/kernel/m
": ?2Adam/conv2d_75/bias/m
::8@?2!Adam/conv2d_transpose_13/kernel/m
+:)@2Adam/conv2d_transpose_13/bias/m
0:.?@2Adam/conv2d_76/kernel/m
!:@2Adam/conv2d_76/bias/m
/:-@@2Adam/conv2d_77/kernel/m
!:@2Adam/conv2d_77/bias/m
9:7 @2!Adam/conv2d_transpose_14/kernel/m
+:) 2Adam/conv2d_transpose_14/bias/m
/:-@ 2Adam/conv2d_78/kernel/m
!: 2Adam/conv2d_78/bias/m
/:-  2Adam/conv2d_79/kernel/m
!: 2Adam/conv2d_79/bias/m
/:-  2Adam/conv2d_80/kernel/m
!: 2Adam/conv2d_80/bias/m
/:- 2Adam/conv2d_81/kernel/m
!:2Adam/conv2d_81/bias/m
/:- 2Adam/conv2d_62/kernel/v
!: 2Adam/conv2d_62/bias/v
/:-  2Adam/conv2d_63/kernel/v
!: 2Adam/conv2d_63/bias/v
/:- @2Adam/conv2d_64/kernel/v
!:@2Adam/conv2d_64/bias/v
/:-@@2Adam/conv2d_65/kernel/v
!:@2Adam/conv2d_65/bias/v
0:.@?2Adam/conv2d_66/kernel/v
": ?2Adam/conv2d_66/bias/v
1:/??2Adam/conv2d_67/kernel/v
": ?2Adam/conv2d_67/bias/v
1:/??2Adam/conv2d_68/kernel/v
": ?2Adam/conv2d_68/bias/v
1:/??2Adam/conv2d_69/kernel/v
": ?2Adam/conv2d_69/bias/v
1:/??2Adam/conv2d_70/kernel/v
": ?2Adam/conv2d_70/bias/v
1:/??2Adam/conv2d_71/kernel/v
": ?2Adam/conv2d_71/bias/v
;:9??2!Adam/conv2d_transpose_11/kernel/v
,:*?2Adam/conv2d_transpose_11/bias/v
1:/??2Adam/conv2d_72/kernel/v
": ?2Adam/conv2d_72/bias/v
1:/??2Adam/conv2d_73/kernel/v
": ?2Adam/conv2d_73/bias/v
;:9??2!Adam/conv2d_transpose_12/kernel/v
,:*?2Adam/conv2d_transpose_12/bias/v
1:/??2Adam/conv2d_74/kernel/v
": ?2Adam/conv2d_74/bias/v
1:/??2Adam/conv2d_75/kernel/v
": ?2Adam/conv2d_75/bias/v
::8@?2!Adam/conv2d_transpose_13/kernel/v
+:)@2Adam/conv2d_transpose_13/bias/v
0:.?@2Adam/conv2d_76/kernel/v
!:@2Adam/conv2d_76/bias/v
/:-@@2Adam/conv2d_77/kernel/v
!:@2Adam/conv2d_77/bias/v
9:7 @2!Adam/conv2d_transpose_14/kernel/v
+:) 2Adam/conv2d_transpose_14/bias/v
/:-@ 2Adam/conv2d_78/kernel/v
!: 2Adam/conv2d_78/bias/v
/:-  2Adam/conv2d_79/kernel/v
!: 2Adam/conv2d_79/bias/v
/:-  2Adam/conv2d_80/kernel/v
!: 2Adam/conv2d_80/bias/v
/:- 2Adam/conv2d_81/kernel/v
!:2Adam/conv2d_81/bias/v
?2?
'__inference_model_8_layer_call_fn_10627
'__inference_model_8_layer_call_fn_11816
'__inference_model_8_layer_call_fn_11917
'__inference_model_8_layer_call_fn_11338?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_8_layer_call_and_return_conditional_losses_12150
B__inference_model_8_layer_call_and_return_conditional_losses_12397
B__inference_model_8_layer_call_and_return_conditional_losses_11472
B__inference_model_8_layer_call_and_return_conditional_losses_11606?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_9883?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_12?????????`?
?2?
)__inference_conv2d_62_layer_call_fn_12406?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_12417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_63_layer_call_fn_12426?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_12437?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_16_layer_call_fn_9895?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9889?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_conv2d_64_layer_call_fn_12446?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_12457?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_65_layer_call_fn_12466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_12477?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_17_layer_call_fn_9907?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9901?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_conv2d_66_layer_call_fn_12486?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_12497?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_67_layer_call_fn_12506?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_12517?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_18_layer_call_fn_9919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_9913?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_conv2d_68_layer_call_fn_12526?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_12537?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_69_layer_call_fn_12546?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_12557?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_8_layer_call_fn_12562
)__inference_dropout_8_layer_call_fn_12567?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_8_layer_call_and_return_conditional_losses_12572
D__inference_dropout_8_layer_call_and_return_conditional_losses_12584?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_19_layer_call_fn_9931?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_9925?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_conv2d_70_layer_call_fn_12593?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_12604?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_71_layer_call_fn_12613?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_71_layer_call_and_return_conditional_losses_12624?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_9_layer_call_fn_12629
)__inference_dropout_9_layer_call_fn_12634?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_9_layer_call_and_return_conditional_losses_12639
D__inference_dropout_9_layer_call_and_return_conditional_losses_12651?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
2__inference_conv2d_transpose_11_layer_call_fn_9975?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_9965?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
.__inference_concatenate_11_layer_call_fn_12657?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_11_layer_call_and_return_conditional_losses_12664?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_72_layer_call_fn_12673?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_72_layer_call_and_return_conditional_losses_12684?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_73_layer_call_fn_12693?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_73_layer_call_and_return_conditional_losses_12704?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_12_layer_call_fn_10019?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10009?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
.__inference_concatenate_12_layer_call_fn_12710?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_12_layer_call_and_return_conditional_losses_12717?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_74_layer_call_fn_12726?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_74_layer_call_and_return_conditional_losses_12737?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_75_layer_call_fn_12746?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_75_layer_call_and_return_conditional_losses_12757?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_13_layer_call_fn_10063?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10053?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
.__inference_concatenate_13_layer_call_fn_12763?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_13_layer_call_and_return_conditional_losses_12770?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_76_layer_call_fn_12779?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_76_layer_call_and_return_conditional_losses_12790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_77_layer_call_fn_12799?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_77_layer_call_and_return_conditional_losses_12810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_14_layer_call_fn_10107?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10097?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
.__inference_concatenate_14_layer_call_fn_12816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_14_layer_call_and_return_conditional_losses_12823?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_78_layer_call_fn_12832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_78_layer_call_and_return_conditional_losses_12843?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_79_layer_call_fn_12852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_79_layer_call_and_return_conditional_losses_12863?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_80_layer_call_fn_12872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_80_layer_call_and_return_conditional_losses_12883?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_81_layer_call_fn_12892?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_81_layer_call_and_return_conditional_losses_12902?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_11715input_12"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_9883?N,-34?@FGRSYZeflm}~??????????????????????????????:?7
0?-
+?(
input_12?????????`?
? ">?;
9
	conv2d_81,?)
	conv2d_81?????????`??
I__inference_concatenate_11_layer_call_and_return_conditional_losses_12664?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? ".?+
$?!
0??????????
? ?
.__inference_concatenate_11_layer_call_fn_12657?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? "!????????????
I__inference_concatenate_12_layer_call_and_return_conditional_losses_12717?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1????????? ?
? ".?+
$?!
0????????? ?
? ?
.__inference_concatenate_12_layer_call_fn_12710?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1????????? ?
? "!?????????? ??
I__inference_concatenate_13_layer_call_and_return_conditional_losses_12770?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????0@@
? ".?+
$?!
0?????????0@?
? ?
.__inference_concatenate_13_layer_call_fn_12763?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????0@@
? "!??????????0@??
I__inference_concatenate_14_layer_call_and_return_conditional_losses_12823?}?z
s?p
n?k
<?9
inputs/0+??????????????????????????? 
+?(
inputs/1?????????`? 
? ".?+
$?!
0?????????`?@
? ?
.__inference_concatenate_14_layer_call_fn_12816?}?z
s?p
n?k
<?9
inputs/0+??????????????????????????? 
+?(
inputs/1?????????`? 
? "!??????????`?@?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_12417n,-8?5
.?+
)?&
inputs?????????`?
? ".?+
$?!
0?????????`? 
? ?
)__inference_conv2d_62_layer_call_fn_12406a,-8?5
.?+
)?&
inputs?????????`?
? "!??????????`? ?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_12437n348?5
.?+
)?&
inputs?????????`? 
? ".?+
$?!
0?????????`? 
? ?
)__inference_conv2d_63_layer_call_fn_12426a348?5
.?+
)?&
inputs?????????`? 
? "!??????????`? ?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_12457l?@7?4
-?*
(?%
inputs?????????0@ 
? "-?*
#? 
0?????????0@@
? ?
)__inference_conv2d_64_layer_call_fn_12446_?@7?4
-?*
(?%
inputs?????????0@ 
? " ??????????0@@?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_12477lFG7?4
-?*
(?%
inputs?????????0@@
? "-?*
#? 
0?????????0@@
? ?
)__inference_conv2d_65_layer_call_fn_12466_FG7?4
-?*
(?%
inputs?????????0@@
? " ??????????0@@?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_12497mRS7?4
-?*
(?%
inputs????????? @
? ".?+
$?!
0????????? ?
? ?
)__inference_conv2d_66_layer_call_fn_12486`RS7?4
-?*
(?%
inputs????????? @
? "!?????????? ??
D__inference_conv2d_67_layer_call_and_return_conditional_losses_12517nYZ8?5
.?+
)?&
inputs????????? ?
? ".?+
$?!
0????????? ?
? ?
)__inference_conv2d_67_layer_call_fn_12506aYZ8?5
.?+
)?&
inputs????????? ?
? "!?????????? ??
D__inference_conv2d_68_layer_call_and_return_conditional_losses_12537nef8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_68_layer_call_fn_12526aef8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_69_layer_call_and_return_conditional_losses_12557nlm8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_69_layer_call_fn_12546alm8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_70_layer_call_and_return_conditional_losses_12604n}~8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_70_layer_call_fn_12593a}~8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_71_layer_call_and_return_conditional_losses_12624p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_71_layer_call_fn_12613c??8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_72_layer_call_and_return_conditional_losses_12684p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_72_layer_call_fn_12673c??8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_73_layer_call_and_return_conditional_losses_12704p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_73_layer_call_fn_12693c??8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_74_layer_call_and_return_conditional_losses_12737p??8?5
.?+
)?&
inputs????????? ?
? ".?+
$?!
0????????? ?
? ?
)__inference_conv2d_74_layer_call_fn_12726c??8?5
.?+
)?&
inputs????????? ?
? "!?????????? ??
D__inference_conv2d_75_layer_call_and_return_conditional_losses_12757p??8?5
.?+
)?&
inputs????????? ?
? ".?+
$?!
0????????? ?
? ?
)__inference_conv2d_75_layer_call_fn_12746c??8?5
.?+
)?&
inputs????????? ?
? "!?????????? ??
D__inference_conv2d_76_layer_call_and_return_conditional_losses_12790o??8?5
.?+
)?&
inputs?????????0@?
? "-?*
#? 
0?????????0@@
? ?
)__inference_conv2d_76_layer_call_fn_12779b??8?5
.?+
)?&
inputs?????????0@?
? " ??????????0@@?
D__inference_conv2d_77_layer_call_and_return_conditional_losses_12810n??7?4
-?*
(?%
inputs?????????0@@
? "-?*
#? 
0?????????0@@
? ?
)__inference_conv2d_77_layer_call_fn_12799a??7?4
-?*
(?%
inputs?????????0@@
? " ??????????0@@?
D__inference_conv2d_78_layer_call_and_return_conditional_losses_12843p??8?5
.?+
)?&
inputs?????????`?@
? ".?+
$?!
0?????????`? 
? ?
)__inference_conv2d_78_layer_call_fn_12832c??8?5
.?+
)?&
inputs?????????`?@
? "!??????????`? ?
D__inference_conv2d_79_layer_call_and_return_conditional_losses_12863p??8?5
.?+
)?&
inputs?????????`? 
? ".?+
$?!
0?????????`? 
? ?
)__inference_conv2d_79_layer_call_fn_12852c??8?5
.?+
)?&
inputs?????????`? 
? "!??????????`? ?
D__inference_conv2d_80_layer_call_and_return_conditional_losses_12883p??8?5
.?+
)?&
inputs?????????`? 
? ".?+
$?!
0?????????`? 
? ?
)__inference_conv2d_80_layer_call_fn_12872c??8?5
.?+
)?&
inputs?????????`? 
? "!??????????`? ?
D__inference_conv2d_81_layer_call_and_return_conditional_losses_12902p??8?5
.?+
)?&
inputs?????????`? 
? ".?+
$?!
0?????????`?
? ?
)__inference_conv2d_81_layer_call_fn_12892c??8?5
.?+
)?&
inputs?????????`? 
? "!??????????`??
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_9965???J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
2__inference_conv2d_transpose_11_layer_call_fn_9975???J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10009???J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
3__inference_conv2d_transpose_12_layer_call_fn_10019???J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
N__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10053???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
3__inference_conv2d_transpose_13_layer_call_fn_10063???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
N__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10097???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
3__inference_conv2d_transpose_14_layer_call_fn_10107???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
D__inference_dropout_8_layer_call_and_return_conditional_losses_12572n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
D__inference_dropout_8_layer_call_and_return_conditional_losses_12584n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
)__inference_dropout_8_layer_call_fn_12562a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
)__inference_dropout_8_layer_call_fn_12567a<?9
2?/
)?&
inputs??????????
p
? "!????????????
D__inference_dropout_9_layer_call_and_return_conditional_losses_12639n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
D__inference_dropout_9_layer_call_and_return_conditional_losses_12651n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
)__inference_dropout_9_layer_call_fn_12629a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
)__inference_dropout_9_layer_call_fn_12634a<?9
2?/
)?&
inputs??????????
p
? "!????????????
J__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9889?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_16_layer_call_fn_9895?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9901?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_17_layer_call_fn_9907?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_9913?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_18_layer_call_fn_9919?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_9925?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_19_layer_call_fn_9931?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_model_8_layer_call_and_return_conditional_losses_11472?N,-34?@FGRSYZeflm}~??????????????????????????????B??
8?5
+?(
input_12?????????`?
p 

 
? ".?+
$?!
0?????????`?
? ?
B__inference_model_8_layer_call_and_return_conditional_losses_11606?N,-34?@FGRSYZeflm}~??????????????????????????????B??
8?5
+?(
input_12?????????`?
p

 
? ".?+
$?!
0?????????`?
? ?
B__inference_model_8_layer_call_and_return_conditional_losses_12150?N,-34?@FGRSYZeflm}~??????????????????????????????@?=
6?3
)?&
inputs?????????`?
p 

 
? ".?+
$?!
0?????????`?
? ?
B__inference_model_8_layer_call_and_return_conditional_losses_12397?N,-34?@FGRSYZeflm}~??????????????????????????????@?=
6?3
)?&
inputs?????????`?
p

 
? ".?+
$?!
0?????????`?
? ?
'__inference_model_8_layer_call_fn_10627?N,-34?@FGRSYZeflm}~??????????????????????????????B??
8?5
+?(
input_12?????????`?
p 

 
? "!??????????`??
'__inference_model_8_layer_call_fn_11338?N,-34?@FGRSYZeflm}~??????????????????????????????B??
8?5
+?(
input_12?????????`?
p

 
? "!??????????`??
'__inference_model_8_layer_call_fn_11816?N,-34?@FGRSYZeflm}~??????????????????????????????@?=
6?3
)?&
inputs?????????`?
p 

 
? "!??????????`??
'__inference_model_8_layer_call_fn_11917?N,-34?@FGRSYZeflm}~??????????????????????????????@?=
6?3
)?&
inputs?????????`?
p

 
? "!??????????`??
#__inference_signature_wrapper_11715?N,-34?@FGRSYZeflm}~??????????????????????????????F?C
? 
<?9
7
input_12+?(
input_12?????????`?">?;
9
	conv2d_81,?)
	conv2d_81?????????`?