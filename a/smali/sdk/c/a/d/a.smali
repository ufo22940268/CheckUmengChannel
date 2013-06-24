.class public Lsdk/c/a/d/a;
.super Lsdk/c/a/e/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/c/a/e/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsdk/c/a/d/a;->d:Z

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const v0, 0x10003

    return v0
.end method
