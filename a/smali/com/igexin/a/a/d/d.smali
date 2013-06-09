.class public final Lcom/igexin/a/a/d/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/igexin/a/a/d/e;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/d/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/d/d;->a:Lcom/igexin/a/a/d/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/l;)V
    .locals 3

    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/igexin/a/a/d/d;->a:Lcom/igexin/a/a/d/e;

    invoke-interface {v2, v1, v0}, Lcom/igexin/a/a/d/e;->a(Lcom/igexin/a/a/b/l;I)V

    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->t()Lcom/igexin/a/a/b/l;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->w()Lcom/igexin/a/a/b/l;

    move-result-object v2

    if-nez v2, :cond_1

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/igexin/a/a/d/d;->a:Lcom/igexin/a/a/d/e;

    invoke-interface {v2, v1, v0}, Lcom/igexin/a/a/d/e;->b(Lcom/igexin/a/a/b/l;I)V

    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->r()Lcom/igexin/a/a/b/l;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/igexin/a/a/d/d;->a:Lcom/igexin/a/a/d/e;

    invoke-interface {v2, v1, v0}, Lcom/igexin/a/a/d/e;->b(Lcom/igexin/a/a/b/l;I)V

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Lcom/igexin/a/a/b/l;->w()Lcom/igexin/a/a/b/l;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void
.end method
