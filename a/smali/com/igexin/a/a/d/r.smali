.class public final Lcom/igexin/a/a/d/r;
.super Lcom/igexin/a/a/d/g;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/g;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/d/r;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/d/r;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/b/i;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/r;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
