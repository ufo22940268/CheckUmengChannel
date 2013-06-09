.class public final Lcom/a/a/a/h/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a/a/a/g/a;

.field private b:Lcom/a/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/a/a/a/g/b;

    new-instance v1, Lcom/a/a/a/b;

    invoke-direct {v1}, Lcom/a/a/a/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/b;)V

    new-instance v1, Lcom/a/a/a/a/a;

    invoke-direct {v1}, Lcom/a/a/a/a/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/h/b;-><init>(Lcom/a/a/a/g/a;Lcom/a/a/a/a/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/a/g/a;Lcom/a/a/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/h/b;->a:Lcom/a/a/a/g/a;

    iput-object p2, p0, Lcom/a/a/a/h/b;->b:Lcom/a/a/a/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/h/b;->a:Lcom/a/a/a/g/a;

    invoke-interface {v1, p1}, Lcom/a/a/a/g/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/h/b;->b:Lcom/a/a/a/a/a;

    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
