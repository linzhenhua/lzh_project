#ifndef FUNCTION_TRAITS_H
#define FUNCTION_TRAITS_H

#include<type_traits>

namespace callback_container {
    template<typename T>
    struct function_traits;

    template<typename Ret, typename Arg, typename... Args>
    struct function_traits<Ret(Arg, Args...)> {
    public:
        enum { arity = sizeof...(Args) + 1 };
        typedef Ret function_type(Arg, Args...);
        typedef Ret return_type;
        using stl_function_type = std::function<function_type>;
        typedef Ret(*pointer)(Arg, Args...);

        using args_tuple = std::tuple<std::string, Arg, std::remove_const_t<std::remove_reference_t<Args>>...>;
    };

    template<typename Ret>
    struct function_traits<Ret()> {
    public:
        enum { arity = 0 };
        typedef Ret function_type();
        typedef Ret return_type;
        using stl_function_type = std::function<function_type>;
        typedef Ret(*pointer)();

        typedef std::tuple<> tuple_type;
        typedef std::tuple<> bare_tuple_type;
        using args_tuple = std::tuple<std::string>;
        using args_tuple_2nd = std::tuple<std::string>;
    };

    template<typename Ret, typename... Args>
    struct function_traits<Ret(*)(Args...)> : function_traits<Ret(Args...)> {};

    template <typename Ret, typename... Args>
    struct function_traits<std::function<Ret(Args...)>> : function_traits<Ret(Args...)> {};

    template <typename ReturnType, typename ClassType, typename... Args>
    struct function_traits<ReturnType(ClassType:: *)(Args...)> : function_traits<ReturnType(Args...)> {};

    template <typename ReturnType, typename ClassType, typename... Args>
    struct function_traits<ReturnType(ClassType:: *)(Args...) const> : function_traits<ReturnType(Args...)> {};

    template<typename Callable>
    struct function_traits : function_traits<decltype(&Callable::operator())> {};
}

#endif // !FUNCTION_TRAITS_H