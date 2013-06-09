.class public final Lcom/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0}, Lcom/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/a/a/a/b;
    .locals 2

    new-instance v0, Lcom/a/a/a/d/a/b;

    invoke-direct {v0}, Lcom/a/a/a/d/a/b;-><init>()V

    new-instance v0, Lcom/a/a/a/d/a/a;

    invoke-direct {v0, p1}, Lcom/a/a/a/d/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/a/a/a/d/a/b;->a(Lcom/a/a/a/d/a/a;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v1, v0}, Lcom/a/a/a/b;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/b;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/b;

    return-object v0
.end method

.method public final a(Lcom/a/a/a/b/a;)Lcom/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b/a;)V

    return-object p0
.end method
