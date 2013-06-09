.class final Lcom/igexin/a/a/c/d;
.super Ljava/util/ArrayList;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput p2, p0, Lcom/igexin/a/a/c/d;->a:I

    return-void
.end method

.method static a(I)Lcom/igexin/a/a/c/d;
    .locals 2

    new-instance v0, Lcom/igexin/a/a/c/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/igexin/a/a/c/d;-><init>(II)V

    return-object v0
.end method

.method static b()Lcom/igexin/a/a/c/d;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/igexin/a/a/c/d;

    invoke-direct {v0, v1, v1}, Lcom/igexin/a/a/c/d;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/igexin/a/a/c/d;->size()I

    move-result v0

    iget v1, p0, Lcom/igexin/a/a/c/d;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
