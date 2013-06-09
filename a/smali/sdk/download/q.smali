.class public final Lsdk/download/q;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification;Lsdk/download/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    const v7, 0x1080093

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p2, Lsdk/download/d;->v:I

    if-gtz v0, :cond_0

    iput v2, p2, Lsdk/download/d;->w:I

    iput v3, p2, Lsdk/download/d;->v:I

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    :cond_1
    iget-boolean v0, p2, Lsdk/download/d;->N:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p2, Lsdk/download/d;->N:Z

    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    iput-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v4, 0x1080081

    iput v4, p1, Landroid/app/Notification;->icon:I

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v4, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v4, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/app/Notification;->flags:I

    iget v4, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p1, Landroid/app/Notification;->flags:I

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v0, "app_download_notification"

    const-string v4, "layout"

    invoke-static {p0, v0, v4}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move-object p1, v1

    :goto_1
    return-object p1

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    :cond_4
    iput v2, p1, Landroid/app/Notification;->defaults:I

    iput-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v1, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p2, Lsdk/download/d;->F:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_2
    if-eqz v1, :cond_7

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    const-string v4, "drawable"

    invoke-static {p0, v1, v4}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "download_icon"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "drawable"

    invoke-static {p0, v1, v5}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_3
    iget v0, p2, Lsdk/download/d;->v:I

    if-gtz v0, :cond_6

    iput v3, p2, Lsdk/download/d;->v:I

    :cond_6
    iget v0, p2, Lsdk/download/d;->w:I

    int-to-long v0, v0

    const-wide/16 v3, 0x64

    mul-long/2addr v0, v3

    iget v3, p2, Lsdk/download/d;->v:I

    int-to-long v3, v3

    div-long/2addr v0, v3

    long-to-int v0, v0

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_name"

    const-string v4, "id"

    invoke-static {p0, v3, v4}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p2, Lsdk/download/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "update_notification_progressbar"

    const-string v4, "id"

    invoke-static {p0, v3, v4}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "update_notification_progresstext"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_a

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    if-nez v0, :cond_a

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDownloadImgCache Utils logoSrc = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsdk/b/a/a/c/d;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_8
    invoke-static {p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "download_icon"

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_9

    iget-object v4, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "download_icon"

    const-string v4, "id"

    invoke-static {p0, v1, v4}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    :cond_a
    const-string v0, "push"

    const-string v1, "drawable"

    invoke-static {p0, v0, v1}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "download_icon"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "download_icon"

    const-string v4, "id"

    invoke-static {p0, v1, v4}, Lsdk/download/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    :cond_c
    move v0, v3

    goto/16 :goto_2
.end method
