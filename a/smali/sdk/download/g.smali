.class final Lsdk/download/g;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lsdk/download/DownloadService;


# direct methods
.method public constructor <init>(Lsdk/download/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lsdk/download/g;->a:Lsdk/download/DownloadService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lsdk/download/g;->a:Lsdk/download/DownloadService;

    invoke-static {v0}, Lsdk/download/DownloadService;->a(Lsdk/download/DownloadService;)V

    return-void
.end method
