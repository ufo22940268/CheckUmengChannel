.class final Lcom/zhangdan/app/activities/remark/g;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

.field private b:Lcom/zhangdan/app/data/model/http/p;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/g;->a:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/remark/g;->e:I

    return-void
.end method

.method public final a(Lcom/zhangdan/app/data/model/http/p;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/g;->b:Lcom/zhangdan/app/data/model/http/p;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/zhangdan/app/data/model/http/p;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->b:Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->b:Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 5

    const/4 v4, 0x4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    if-le v3, v4, :cond_1

    const-string v0, " ..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->d:Ljava/lang/String;

    return-void

    :cond_2
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    if-ge v1, v0, :cond_3

    const-string v0, " / "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/remark/g;->e:I

    return v0
.end method
