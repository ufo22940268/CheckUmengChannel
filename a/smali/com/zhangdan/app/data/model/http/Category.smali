.class public Lcom/zhangdan/app/data/model/http/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private categoryId:I

.field private categotyName:Ljava/lang/String;

.field private isdelete:I

.field private parntId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Category;->categoryId:I

    return v0
.end method

.method public getCategotyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Category;->categotyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsdelete()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Category;->isdelete:I

    return v0
.end method

.method public getParntId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Category;->parntId:I

    return v0
.end method

.method public setCategoryId(I)V
    .locals 0
    .parameter "categoryId"

    .prologue
    .line 32
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Category;->categoryId:I

    .line 33
    return-void
.end method

.method public setCategotyName(Ljava/lang/String;)V
    .locals 0
    .parameter "categotyName"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Category;->categotyName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIsdelete(I)V
    .locals 0
    .parameter "isdelete"

    .prologue
    .line 56
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Category;->isdelete:I

    .line 57
    return-void
.end method

.method public setParntId(I)V
    .locals 0
    .parameter "parntId"

    .prologue
    .line 40
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Category;->parntId:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryInfo [categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Category;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parntId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Category;->parntId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categotyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Category;->categotyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isdelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Category;->isdelete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
