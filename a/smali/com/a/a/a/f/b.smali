.class public final Lcom/a/a/a/f/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/f/b;->j:I

    return-void
.end method

.method public static a(III)Lcom/a/a/a/f/b;
    .locals 1

    new-instance v0, Lcom/a/a/a/f/b;

    invoke-direct {v0}, Lcom/a/a/a/f/b;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/a/a/a/f/b;->a(Lcom/a/a/a/f/b;II)Lcom/a/a/a/f/b;

    invoke-static {v0, p2}, Lcom/a/a/a/f/b;->a(Lcom/a/a/a/f/b;I)Lcom/a/a/a/f/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/a/a/a/f/b;
    .locals 3

    new-instance v1, Lcom/a/a/a/f/b;

    invoke-direct {v1}, Lcom/a/a/a/f/b;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/a/a/a/f/b;->a(Lcom/a/a/a/f/b;II)Lcom/a/a/a/f/b;

    invoke-static {v1, p1}, Lcom/a/a/a/f/b;->a(Lcom/a/a/a/f/b;I)Lcom/a/a/a/f/b;

    return-object v1
.end method

.method private static a(Lcom/a/a/a/f/b;I)Lcom/a/a/a/f/b;
    .locals 0

    iput p1, p0, Lcom/a/a/a/f/b;->e:I

    iput p1, p0, Lcom/a/a/a/f/b;->f:I

    return-object p0
.end method

.method private static a(Lcom/a/a/a/f/b;II)Lcom/a/a/a/f/b;
    .locals 0

    iput p1, p0, Lcom/a/a/a/f/b;->c:I

    iput p2, p0, Lcom/a/a/a/f/b;->d:I

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;
    .locals 7

    new-instance v6, Lcom/a/a/a/h/a;

    invoke-direct {v6, p2}, Lcom/a/a/a/h/a;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/a/a/a/f/b;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/a/f/b;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/a/f/b;->d:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "defaultImageResId, width or height was not set before calling build()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/a/a/a/f/a;

    iget v2, p0, Lcom/a/a/a/f/b;->e:I

    iget v3, p0, Lcom/a/a/a/f/b;->f:I

    iget v4, p0, Lcom/a/a/a/f/b;->c:I

    iget v5, p0, Lcom/a/a/a/f/b;->d:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/f/a;-><init>(Ljava/lang/String;IIII)V

    iget-boolean v1, p0, Lcom/a/a/a/f/b;->g:Z

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/a;->a(Z)V

    iget-boolean v1, p0, Lcom/a/a/a/f/b;->h:Z

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/a;->b(Z)V

    iget-boolean v1, p0, Lcom/a/a/a/f/b;->i:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/a/a/a/f/a;->a(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/a/a/a/f/b;->b:I

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/a;->b(I)V

    iget v1, p0, Lcom/a/a/a/f/b;->a:I

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/a;->a(I)V

    iget-object v1, p0, Lcom/a/a/a/f/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/a;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/a/a/f/b;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/a/a/a/f/b;->j:I

    invoke-virtual {v6, v1}, Lcom/a/a/a/h/a;->a(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f/a;->a(Landroid/view/animation/Animation;)V

    :cond_3
    return-object v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/f/b;->h:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const v0, 0x7f040001

    iput v0, p0, Lcom/a/a/a/f/b;->j:I

    return-void
.end method
