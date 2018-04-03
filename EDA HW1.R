#### R-Objdect

####1

x = c(17,16,20,24,22,15,21,18)

#1 
x[which(x>=20)]
which(x>=20)

#2
x[x>=20]=100
y=x



####2

#1
x=matrix(rep(-1,25),5,5)

for( i in 1:5)
{
  x[i,i]=i+2
}  

#2
y=x[1:4,]

#3
yinfo<-c(nrow(y),ncol(y))

#4
y[which(y==-1)]=0
y1=y



#### 3

#1
save.image("sadf.rdata")

#2
is.na()

#3

for( i in 1:4)
  
{
  k=as.matrix(rowdata)
  k[which(is.na(k))]=0
  if(k[i,2]|k[i,3]!=0)
  {print(i)
  }
}

rowdata=data.frame(k)

#4

x=as.matrix(rowdata)
a=x[,2,drop=F]
b=x[,3,drop=F]
x1=a[-(which(a==0))]
x2=b[-(which(b==0))]
rdata=data.frame(x1,x2)

#### 4

#1
temp=list(a=c(T,F),b=matrix(c(1,0,0,1),2,2),c=seq(0,1,length=100),d=1,e=2,f=3,g=4)
temp

#2
temp[[2]]=NULL

#3
temp[[3]]

#4
length(temp)

#### 5

#1, 길이가 2인 벡터의 합 연산이다.
a1<--1:2
a1
a2<-1:2
a1+a2

#2, a1이 음수로 된 벡터.
a1<- -(1:2)
a2<-1:2
a1+a2

#3, a1행렬에 a2벡터가 순서대로 더해진다.
a1<-matrix(0,2,2)
a2<-3:4
a1+a2

#4, a1행렬에서 2 초과인 항은 0으로 바꾼다.
a1<-matrix(1:4,2,2)
a1[a1>2]=0
a1

#5, 2:5-1:4
a1<-1:5
a1[-1]-a1[-length(a1)]

#### R-Programming

#1
a=c(1,3,rep(0,18))
for(i in 1:18)
{
  a[i+2]=0.9*a[i+1]-0.1*a[i]+1
  print(a[20])
}

#2
a[which(a>=4)]
which(a>=4)

#3
A = matrix(runif(100),50,5)
repV=function(x)
{
  v=rep(0,nrow(x))
  for(i in 1:nrow(x))
  {
    v[i] = sum(x[i,])
  }
  return(v)
}
repV(A)

#4
tmp = rep(0, 10)
a <- 10:1
idx = 1
for ( j in a)
{
  if (j<5)
  {
    tmp[idx] <- a[j]
    idx <- idx + 1
  }
}
tmp

#5
x=matrix(0,1000,5)
sid=sample(1:10, size=1000, replace=T)
v<- data.frame(sid,x)


#6
m.mat=matrix(1,10,5)
v1=v$X1
v2=v$X2
v3=v$X3
v4=v$X4
v5=v$X5
for(j in 1:10)
{
  m.mat[j,]=c(mean(v1[which(sid==j)]),
              mean(v2[which(sid==j)]),
              mean(v3[which(sid==j)]),
              mean(v4[which(sid==j)]),
              mean(v5[which(sid==j)]))
}
m.mat

#7
idist=matrix(0,1000,10)
soo=function(x1,x2)
{
  v=sum(x1*x2)/(sqrt(sum(x1*x1))*sqrt(sum(x2*x2)))
  print(v)
}

for(i in 1:1000)
{
  for(j in 1:10)
  {
    idist[i,j]=soo(x[i,],m.mat[j,])
  }
}
idist

#8
for(i in 1:1000)
{
  which.min(idist[i,])
}

#9-1
set.seed(1)
a = list()
for (i in 1:1000)
{ 
  x = rpois(1,4)+1
  x = min(x,10)
  a[[i]] = sample(1:10, x)
}
x=rep(0,10)
for(i in 1:1000)
{
  for(j in 2:10)
  {
    if(length(a[[i]])==j)
    {
    x[j]<- x[j]+1
    print(x)
    }
  }
}
#answer:84,146,195,207,130,112,62,28,21


#10-1
set.seed(1)
m1=10
m2=5
num=0
repeat{
  x=rbinom(1,1,1/2)
  print(x)
  m1 <- if(x==1) m1 + 1 else m1 - 1
  m2 <- if(x==1) m2 - 1 else m2 + 1
  if(m1|m2=0) break
}##루프 돌리는 방법을 잘 모르겠습니다ㅜㅜ

#10-3
for(k in 1:200)
{
  set.seed(k)
  m1=10
  m2=5
  num=0
  repeat{
    x=rbinom(1,1,1/2)
    print(x)
    m1 <- if(x==1) m1 + 1 else m1 - 1
    m2 <- if(x==1) m2 - 1 else m2 + 1
    if(m1|m2=0) break
  }
}

#10-4
m2=10
m2=15
m2=20
m2=25
