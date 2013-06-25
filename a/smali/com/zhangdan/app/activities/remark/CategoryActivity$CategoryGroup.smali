.class Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
.super Ljava/lang/Object;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/remark/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryGroup"
.end annotation


# instance fields
.field private category:Lcom/zhangdan/app/data/model/http/Category;

.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation
.end field

.field private iconResId:I

.field private subName:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCategory(Lcom/zhangdan/app/data/model/http/Category;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public getCategory()Lcom/zhangdan/app/data/model/http/Category;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->category:Lcom/zhangdan/app/data/model/http/Category;

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->category:Lcom/zhangdan/app/data/model/http/Category;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->category:Lcom/zhangdan/app/data/model/http/Category;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->iconResId:I

    return v0
.end method

.method public getSubName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->subName:Ljava/lang/String;

    return-object v0
.end method

.method public initSubName()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 154
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 156
    .local v2, size:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 157
    if-ge v0, v4, :cond_1

    .line 158
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/http/Category;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 160
    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    if-le v2, v4, :cond_2

    .line 166
    const-string v3, " ..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->subName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setCategory(Lcom/zhangdan/app/data/model/http/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->category:Lcom/zhangdan/app/data/model/http/Category;

    .line 127
    return-void
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->categoryList:Ljava/util/List;

    .line 133
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .parameter "iconResId"

    .prologue
    .line 178
    iput p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->iconResId:I

    .line 179
    return-void
.end method
