.class public final Lsdk/b/a/a/b/q;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:B

.field d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsdk/b/a/a/b/q;->a:J

    iput-object p3, p0, Lsdk/b/a/a/b/q;->b:Ljava/lang/String;

    iput-byte p4, p0, Lsdk/b/a/a/b/q;->c:B

    iput-wide p5, p0, Lsdk/b/a/a/b/q;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lsdk/b/a/a/b/q;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()B
    .locals 1

    iget-byte v0, p0, Lsdk/b/a/a/b/q;->c:B

    return v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lsdk/b/a/a/b/q;->d:J

    return-wide v0
.end method
