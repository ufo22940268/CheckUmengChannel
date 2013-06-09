.class public final Lcom/a/a/a/d/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/d/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/d/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/d/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
