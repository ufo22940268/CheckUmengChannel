.class abstract Lcom/igexin/a/a/d/r;
.super Lcom/igexin/a/a/d/v;


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/d/v;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/d/r;-><init>()V

    iget-object v0, p0, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
