.class Lcom/igexin/a/a/d/ao;
.super Lcom/igexin/a/a/d/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
