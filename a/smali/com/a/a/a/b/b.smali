.class public final Lcom/a/a/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/b/a;


# instance fields
.field private a:Lcom/a/a/a/b/a/a;

.field private b:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    :cond_0
    mul-int/lit8 v0, v0, 0x19

    int-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    long-to-int v0, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x40

    :cond_1
    iput v0, p0, Lcom/a/a/a/b/b;->b:I

    iget-object v0, p0, Lcom/a/a/a/b/b;->a:Lcom/a/a/a/b/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/b/b;->a:Lcom/a/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/b/a/a;->a()V

    :cond_2
    new-instance v0, Lcom/a/a/a/b/c;

    iget v1, p0, Lcom/a/a/a/b/b;->b:I

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/b/c;-><init>(Lcom/a/a/a/b/b;I)V

    iput-object v0, p0, Lcom/a/a/a/b/b;->a:Lcom/a/a/a/b/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/a/b/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b/b;->a:Lcom/a/a/a/b/a/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/b/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b/b;->a:Lcom/a/a/a/b/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/b/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
