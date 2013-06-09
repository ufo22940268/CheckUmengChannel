.class public abstract Lcom/igexin/a/a/d/y;
.super Lcom/igexin/a/a/d/v;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/d/v;-><init>()V

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/y;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/y;->b:Ljava/lang/String;

    return-void
.end method
