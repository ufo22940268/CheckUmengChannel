.class final enum Lcom/igexin/a/a/c/ba;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/Character;Z)Ljava/lang/Character;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(C)V

    :goto_0
    sget-object v0, Lcom/igexin/a/a/c/ba;->c:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(C)V

    goto :goto_0
.end method
