.class final Lsdk/c/a/b/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lsdk/c/a/b/a/a/d;


# direct methods
.method constructor <init>(Lsdk/c/a/b/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lsdk/c/a/b/a/a/e;->a:Lsdk/c/a/b/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, -0x1

    check-cast p1, Lsdk/c/a/b/a/a/f;

    check-cast p2, Lsdk/c/a/b/a/a/f;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Lsdk/c/a/b/a/a/f;->L:I

    int-to-long v2, v2

    iget-wide v4, p1, Lsdk/c/a/b/a/a/f;->J:J

    add-long/2addr v2, v4

    iget v4, p2, Lsdk/c/a/b/a/a/f;->L:I

    int-to-long v4, v4

    iget-wide v6, p2, Lsdk/c/a/b/a/a/f;->J:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget v0, p1, Lsdk/c/a/b/a/a/f;->L:I

    int-to-long v2, v0

    iget-wide v4, p1, Lsdk/c/a/b/a/a/f;->J:J

    add-long/2addr v2, v4

    iget v0, p2, Lsdk/c/a/b/a/a/f;->L:I

    int-to-long v4, v0

    iget-wide v6, p2, Lsdk/c/a/b/a/a/f;->J:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method