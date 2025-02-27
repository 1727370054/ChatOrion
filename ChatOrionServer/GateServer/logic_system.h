#ifndef LOGICSYSTEM_H
#define LOGICSYSTEM_H

#include "singleton.hpp"

#include <functional>
#include <map>

class HttpConnection;

using HttpHandler =  std::function<void(std::shared_ptr<HttpConnection>)>;

class LogicSystem : public Singleton<LogicSystem>
{
    friend class Singleton<LogicSystem>;
public:
    bool handleGet(const std::string& path, std::shared_ptr<HttpConnection> con);
    bool handlePost(const std::string& path, std::shared_ptr<HttpConnection> con);
    void regGet(std::string url, HttpHandler handler);
    void regPost(std::string url, HttpHandler handler);
private:
    LogicSystem();

    void getVarifycodeCallback(std::shared_ptr<HttpConnection> connection);
    void userRegsterCallback(std::shared_ptr<HttpConnection> connection);
    void forgetPasswordCallback(std::shared_ptr<HttpConnection> connection);
    void userLoginCallback(std::shared_ptr<HttpConnection> connection);
    void emailLoginCallback(std::shared_ptr<HttpConnection> connection);

    std::map<std::string, HttpHandler> _get_handlers;
    std::map<std::string, HttpHandler> _post_handlers;
};

#endif // LOGICSYSTEM_H
