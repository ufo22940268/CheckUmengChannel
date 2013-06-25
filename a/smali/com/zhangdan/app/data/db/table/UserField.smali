.class public interface abstract Lcom/zhangdan/app/data/db/table/UserField;
.super Ljava/lang/Object;
.source "UserField.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.zhangdan.app.user"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PWD:Ljava/lang/String; = "pwd"

.field public static final SQL_CREATE_TABLE:Ljava/lang/String; = "create table if not exists user_history(_id integer primary key, user_name varchar(50), pwd  varchar(50))"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_history"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://com.zhangdan.app/user_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/table/UserField;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
