.class final Lcom/a/a/a/b/c;
.super Lcom/a/a/a/b/a/a;


# instance fields
.field final synthetic a:Lcom/a/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/a/a/a/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/b/c;->a:Lcom/a/a/a/b/b;

    invoke-direct {p0, p2}, Lcom/a/a/a/b/a/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
