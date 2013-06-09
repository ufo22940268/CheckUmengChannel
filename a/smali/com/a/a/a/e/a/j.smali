.class public final Lcom/a/a/a/e/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/a/a/a/f/c;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/a/a/a/f/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/e/a/j;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/a/a/a/e/a/j;->b:Lcom/a/a/a/f/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/a/j;->b:Lcom/a/a/a/f/c;

    invoke-virtual {v0, p0}, Lcom/a/a/a/f/c;->a(Lcom/a/a/a/e/a/j;)V

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/a/j;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/a/j;->b:Lcom/a/a/a/f/c;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/a/j;->b:Lcom/a/a/a/f/c;

    iget-object v1, p0, Lcom/a/a/a/e/a/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
