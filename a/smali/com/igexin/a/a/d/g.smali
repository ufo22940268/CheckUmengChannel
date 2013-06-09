.class public final Lcom/igexin/a/a/d/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/igexin/a/a/d/v;

.field private final b:Lcom/igexin/a/a/b/i;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/igexin/a/a/b/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/igexin/a/a/d/f;->a(Ljava/lang/String;)Lcom/igexin/a/a/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/g;->a:Lcom/igexin/a/a/d/v;

    iput-object p2, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/b/i;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/igexin/a/a/b/i;)Lcom/igexin/a/a/d/u;
    .locals 2

    new-instance v0, Lcom/igexin/a/a/d/g;

    invoke-direct {v0, p0, p1}, Lcom/igexin/a/a/d/g;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/i;)V

    iget-object v1, v0, Lcom/igexin/a/a/d/g;->a:Lcom/igexin/a/a/d/v;

    iget-object v0, v0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/b/i;

    invoke-static {v1, v0}, Lcom/igexin/a/a/d/a;->a(Lcom/igexin/a/a/d/v;Lcom/igexin/a/a/b/i;)Lcom/igexin/a/a/d/u;

    move-result-object v0

    return-object v0
.end method
