.class public interface abstract Lcom/zhangdan/app/data/db/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zhangdan.app/userinfoext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/u;->a:Landroid/net/Uri;

    const-string v0, "CREATE TABLE IF NOT EXISTS UserInfoExt(_id INTEGER PRIMARY KEY AUTOINCREMENT,user_id INTEGER DEFAULT 0,no_push_in_night INTEGER DEFAULT 0,private_info TEXT DEFAULT \'\')"

    sput-object v0, Lcom/zhangdan/app/data/db/a/u;->b:Ljava/lang/String;

    return-void
.end method
