.class public Lcom/zhangdan/app/data/model/SyncTaskInfo;
.super Ljava/lang/Object;
.source "SyncTaskInfo.java"


# instance fields
.field private id:I

.field private key:Ljava/lang/String;

.field private val1:Ljava/lang/String;

.field private val2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVal1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->val1:Ljava/lang/String;

    return-object v0
.end method

.method public getVal2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->val2:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 19
    iput p1, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->id:I

    .line 20
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->key:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setVal1(Ljava/lang/String;)V
    .locals 0
    .parameter "val1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->val1:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setVal2(Ljava/lang/String;)V
    .locals 0
    .parameter "val2"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/data/model/SyncTaskInfo;->val2:Ljava/lang/String;

    .line 38
    return-void
.end method
