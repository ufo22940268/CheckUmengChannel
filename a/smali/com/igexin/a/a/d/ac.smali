.class public Lcom/igexin/a/a/d/ac;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/igexin/a/a/d/ad;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/d/ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/d/ac;->a:Lcom/igexin/a/a/d/ad;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/b/l;)V
    .locals 4

    const/4 v2, 0x0

    move v0, v2

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/igexin/a/a/d/ac;->a:Lcom/igexin/a/a/d/ad;

    invoke-interface {v3, v1, v0}, Lcom/igexin/a/a/d/ad;->a(Lcom/igexin/a/a/b/l;I)V

    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->y()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/b/l;->a(I)Lcom/igexin/a/a/b/l;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->B()Lcom/igexin/a/a/b/l;

    move-result-object v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/igexin/a/a/d/ac;->a:Lcom/igexin/a/a/d/ad;

    invoke-interface {v3, v1, v0}, Lcom/igexin/a/a/d/ad;->b(Lcom/igexin/a/a/b/l;I)V

    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->w()Lcom/igexin/a/a/b/l;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/igexin/a/a/d/ac;->a:Lcom/igexin/a/a/d/ad;

    invoke-interface {v3, v1, v0}, Lcom/igexin/a/a/d/ad;->b(Lcom/igexin/a/a/b/l;I)V

    if-ne v1, p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->B()Lcom/igexin/a/a/b/l;

    move-result-object v1

    goto :goto_0
.end method
