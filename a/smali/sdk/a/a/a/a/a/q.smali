.class public final Lsdk/a/a/a/a/a/q;
.super Lsdk/c/b/a/b/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/b/a/b/b;-><init>()V

    const/16 v0, 0x1d

    iput v0, p0, Lsdk/a/a/a/a/a/q;->j:I

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lsdk/a/a/a/a/a/q;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lsdk/c/a/b/g;->a([BI)I

    move-result v0

    iput v0, p0, Lsdk/a/a/a/a/a/q;->b:I

    iget v0, p0, Lsdk/a/a/a/a/a/q;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lsdk/c/b/a/b/c;->a:I

    :cond_0
    return-void
.end method

.method public final a()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
